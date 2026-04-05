// Package graph provides a dependency graph engine for ABAP codebase analysis.
// It unifies multiple data sources (ADT APIs, CROSS/WBCROSSGT SQL, D010INC,
// and offline ABAP parser) into a single queryable graph with provenance tracking.
package graph

import (
	"fmt"
	"strings"
	"sync"
)

// EdgeKind describes the semantic relationship between two nodes.
type EdgeKind string

const (
	EdgeCalls           EdgeKind = "CALLS"             // FM call, method call, SUBMIT, PERFORM
	EdgeReferences      EdgeKind = "REFERENCES"        // TYPE REF TO, DATA TYPE, INTERFACES
	EdgeLoads           EdgeKind = "LOADS"              // D010INC compile-time include load
	EdgeContainsInclude EdgeKind = "CONTAINS_INCLUDE"   // Program structure (INCLUDE statement)
	EdgeDependsOnCDS    EdgeKind = "DEPENDS_ON_CDS"     // CDS view dependency
)

// EdgeSource identifies where edge evidence came from.
type EdgeSource string

const (
	SourceADTCallGraph EdgeSource = "ADT_CALL_GRAPH"
	SourceADTWhereUsed EdgeSource = "ADT_WHERE_USED"
	SourceADTCDSDeps   EdgeSource = "ADT_CDS_DEPS"
	SourceCROSS        EdgeSource = "CROSS"
	SourceWBCROSSGT    EdgeSource = "WBCROSSGT"
	SourceD010INC      EdgeSource = "D010INC"
	SourceParser       EdgeSource = "PARSER"
	SourceTrace        EdgeSource = "TRACE"
)

// Node represents an ABAP object in the dependency graph.
// Stored at object level (ZCL_FOO), with raw includes preserved for detail.
type Node struct {
	ID       string   `json:"id"`       // Object-level: "CLAS:ZCL_FOO"
	Name     string   `json:"name"`     // ZCL_FOO
	Type     string   `json:"type"`     // CLAS, PROG, FUGR, TABL, DDLS, INTF, ...
	Package  string   `json:"package"`  // $ZDEV (resolved from TADIR)
	Includes []string `json:"-"`        // Raw includes: ZCL_FOO========CP, etc.
}

// Edge represents a dependency relationship between two nodes.
type Edge struct {
	From       string     `json:"from"`        // Source node ID
	To         string     `json:"to"`          // Target node ID
	Kind       EdgeKind   `json:"kind"`        // CALLS, REFERENCES, LOADS, ...
	Source     EdgeSource `json:"source"`       // Where this evidence came from
	RawInclude string     `json:"raw_include,omitempty"` // Original include where ref occurs
	RefDetail  string     `json:"ref_detail,omitempty"`  // e.g. "METHOD:GET_DATA" or "FM:BAPI_USER_GET_DETAIL"
}

// Graph is an in-memory dependency graph with adjacency indexes.
type Graph struct {
	mu    sync.RWMutex
	nodes map[string]*Node  // ID → Node
	edges []*Edge

	// Indexes for fast lookup
	outEdges map[string][]*Edge // from-ID → edges
	inEdges  map[string][]*Edge // to-ID → edges
}

// New creates an empty Graph.
func New() *Graph {
	return &Graph{
		nodes:    make(map[string]*Node),
		outEdges: make(map[string][]*Edge),
		inEdges:  make(map[string][]*Edge),
	}
}

// AddNode adds or updates a node. If the node already exists, package and
// includes are merged (non-empty values win).
func (g *Graph) AddNode(n *Node) {
	g.mu.Lock()
	defer g.mu.Unlock()

	if existing, ok := g.nodes[n.ID]; ok {
		if n.Package != "" && existing.Package == "" {
			existing.Package = n.Package
		}
		// Merge includes (deduplicate)
		seen := make(map[string]bool, len(existing.Includes))
		for _, inc := range existing.Includes {
			seen[inc] = true
		}
		for _, inc := range n.Includes {
			if !seen[inc] {
				existing.Includes = append(existing.Includes, inc)
				seen[inc] = true
			}
		}
		return
	}
	g.nodes[n.ID] = n
}

// AddEdge adds an edge to the graph. Duplicate edges (same from/to/kind/source)
// are allowed — they may carry different detail or raw includes.
func (g *Graph) AddEdge(e *Edge) {
	g.mu.Lock()
	defer g.mu.Unlock()

	g.edges = append(g.edges, e)
	g.outEdges[e.From] = append(g.outEdges[e.From], e)
	g.inEdges[e.To] = append(g.inEdges[e.To], e)
}

// GetNode returns a node by ID, or nil if not found.
func (g *Graph) GetNode(id string) *Node {
	g.mu.RLock()
	defer g.mu.RUnlock()
	return g.nodes[id]
}

// Nodes returns all nodes.
func (g *Graph) Nodes() []*Node {
	g.mu.RLock()
	defer g.mu.RUnlock()
	result := make([]*Node, 0, len(g.nodes))
	for _, n := range g.nodes {
		result = append(result, n)
	}
	return result
}

// Edges returns all edges.
func (g *Graph) Edges() []*Edge {
	g.mu.RLock()
	defer g.mu.RUnlock()
	result := make([]*Edge, len(g.edges))
	copy(result, g.edges)
	return result
}

// OutEdges returns edges originating from a node.
func (g *Graph) OutEdges(nodeID string) []*Edge {
	g.mu.RLock()
	defer g.mu.RUnlock()
	return g.outEdges[nodeID]
}

// InEdges returns edges pointing to a node.
func (g *Graph) InEdges(nodeID string) []*Edge {
	g.mu.RLock()
	defer g.mu.RUnlock()
	return g.inEdges[nodeID]
}

// NodeCount returns the number of nodes.
func (g *Graph) NodeCount() int {
	g.mu.RLock()
	defer g.mu.RUnlock()
	return len(g.nodes)
}

// EdgeCount returns the number of edges.
func (g *Graph) EdgeCount() int {
	g.mu.RLock()
	defer g.mu.RUnlock()
	return len(g.edges)
}

// Stats returns summary statistics about the graph.
func (g *Graph) Stats() GraphStats {
	g.mu.RLock()
	defer g.mu.RUnlock()

	s := GraphStats{
		NodeCount:   len(g.nodes),
		EdgeCount:   len(g.edges),
		ByNodeType:  make(map[string]int),
		ByEdgeKind:  make(map[EdgeKind]int),
		BySource:    make(map[EdgeSource]int),
		ByPackage:   make(map[string]int),
	}
	for _, n := range g.nodes {
		s.ByNodeType[n.Type]++
		if n.Package != "" {
			s.ByPackage[n.Package]++
		}
	}
	for _, e := range g.edges {
		s.ByEdgeKind[e.Kind]++
		s.BySource[e.Source]++
	}
	return s
}

// GraphStats holds summary statistics.
type GraphStats struct {
	NodeCount  int                  `json:"node_count"`
	EdgeCount  int                  `json:"edge_count"`
	ByNodeType map[string]int       `json:"by_node_type"`
	ByEdgeKind map[EdgeKind]int     `json:"by_edge_kind"`
	BySource   map[EdgeSource]int   `json:"by_source"`
	ByPackage  map[string]int       `json:"by_package"`
}

// --- Include → Object normalization ---

// NodeID creates a canonical node ID from type and name.
func NodeID(objType, objName string) string {
	return fmt.Sprintf("%s:%s", strings.ToUpper(objType), strings.ToUpper(strings.TrimSpace(objName)))
}

// NormalizeInclude converts an include name to an object-level node ID.
// Examples:
//
//	ZCL_FOO========CP     → CLAS:ZCL_FOO
//	ZCL_FOO========CU     → CLAS:ZCL_FOO
//	ZCL_FOO========CM001  → CLAS:ZCL_FOO
//	ZIF_BAR========IP     → INTF:ZIF_BAR
//	SAPL_ZFUGR            → FUGR:ZFUGR
//	LZFUGR_U01            → FUGR:ZFUGR
//	ZREPORT               → PROG:ZREPORT
//	ZREPORT_F01           → PROG:ZREPORT (heuristic)
func NormalizeInclude(include string) (nodeID string, objType string, objName string) {
	inc := strings.TrimSpace(include)

	// Class pool: NAME====...==XX (padded with = signs)
	if idx := strings.Index(inc, "="); idx > 0 {
		name := strings.TrimRight(inc[:idx], "=")
		suffix := strings.TrimLeft(inc[idx:], "=")

		// Determine type by suffix
		switch {
		case strings.HasPrefix(suffix, "IP") || strings.HasPrefix(suffix, "IU"):
			return NodeID("INTF", name), "INTF", name
		default:
			// CP, CU, CO, CI, CT, CM* → Class
			return NodeID("CLAS", name), "CLAS", name
		}
	}

	// Function pool: SAPL<fugr> or L<fugr>U01, L<fugr>F01, etc.
	if strings.HasPrefix(inc, "SAPL") {
		fugr := inc[4:]
		return NodeID("FUGR", fugr), "FUGR", fugr
	}
	if len(inc) > 4 && inc[0] == 'L' {
		// L<fugr>Uxx, L<fugr>Fxx, L<fugr>TOP, etc.
		// Try to extract function group name
		for _, sep := range []string{"U0", "F0", "U1", "F1", "TOP", "UXX", "I0"} {
			if idx := strings.Index(inc[1:], sep); idx > 0 {
				fugr := inc[1 : idx+1]
				return NodeID("FUGR", fugr), "FUGR", fugr
			}
		}
	}

	// Default: treat as program
	return NodeID("PROG", inc), "PROG", inc
}

// IsStandardObject returns true if the object name indicates SAP standard (not Z/Y custom).
func IsStandardObject(name string) bool {
	upper := strings.ToUpper(strings.TrimSpace(name))
	if upper == "" {
		return true
	}
	return upper[0] != 'Z' && upper[0] != 'Y'
}
