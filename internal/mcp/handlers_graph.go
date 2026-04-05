package mcp

import (
	"context"
	"encoding/json"
	"fmt"
	"strings"

	"github.com/mark3labs/mcp-go/mcp"
	"github.com/oisee/vibing-steampunk/pkg/graph"
)

// handleCheckBoundaries performs package boundary analysis.
// It can work in two modes:
//   - Online (with SAP): reads source from SAP, enriches with TADIR packages
//   - Offline (parser-only): analyzes provided source code
func (s *Server) handleCheckBoundaries(ctx context.Context, request mcp.CallToolRequest) (*mcp.CallToolResult, error) {
	args := request.GetArguments()

	pkg := getStringParam(args, "package")
	objectName := getStringParam(args, "object")
	whitelistStr := getStringParam(args, "whitelist")
	format := getStringParam(args, "format")
	sourceCode := getStringParam(args, "source")
	depth := 1
	if d, ok := args["depth"].(float64); ok && d > 0 {
		depth = int(d)
	}

	if pkg == "" && objectName == "" && sourceCode == "" {
		return newToolResultError("Provide 'package', 'object', or 'source' parameter"), nil
	}

	// Parse whitelist
	var whitelist []string
	if whitelistStr != "" {
		for _, w := range strings.Split(whitelistStr, ",") {
			w = strings.TrimSpace(w)
			if w != "" {
				whitelist = append(whitelist, w)
			}
		}
	}

	g := graph.New()

	// Mode 1: Offline parser analysis (source code provided directly)
	if sourceCode != "" {
		nodeID := graph.NodeID("PROG", "SOURCE")
		if objectName != "" {
			nodeID = graph.NodeID("PROG", objectName)
		}

		g.AddNode(&graph.Node{
			ID:      nodeID,
			Name:    strings.ToUpper(objectName),
			Type:    "PROG",
			Package: strings.ToUpper(pkg),
		})

		edges := graph.ExtractDepsFromSource(sourceCode, nodeID)
		dynEdges := graph.ExtractDynamicCalls(sourceCode, nodeID)
		for _, e := range append(edges, dynEdges...) {
			g.AddEdge(e)
			// Add target node (package unknown without SAP)
			g.AddNode(&graph.Node{
				ID:   e.To,
				Name: strings.SplitN(e.To, ":", 2)[1],
				Type: strings.SplitN(e.To, ":", 2)[0],
			})
		}

		// If we have SAP connection, resolve packages via TADIR
		if s.adtClient != nil && pkg != "" {
			s.resolvePackages(ctx, g)
		}

		report := g.CheckBoundaries(pkg, &graph.BoundaryOptions{
			Whitelist:      whitelist,
			IncludeDynamic: true,
			IncludeStandard: format == "full",
		})

		return formatBoundaryResult(report, format)
	}

	// Mode 2: Online — read source from SAP for a specific object
	if objectName != "" && s.adtClient != nil {
		source, err := s.adtClient.GetSource(ctx, "", objectName, nil)
		if err != nil {
			return newToolResultError(fmt.Sprintf("Failed to read source for %s: %v", objectName, err)), nil
		}

		// Determine object type and package from SAP
		objPkg := pkg
		objType := "PROG"

		nodeID := graph.NodeID(objType, objectName)
		g.AddNode(&graph.Node{
			ID:      nodeID,
			Name:    strings.ToUpper(objectName),
			Type:    objType,
			Package: strings.ToUpper(objPkg),
		})

		edges := graph.ExtractDepsFromSource(source, nodeID)
		dynEdges := graph.ExtractDynamicCalls(source, nodeID)
		for _, e := range append(edges, dynEdges...) {
			g.AddEdge(e)
			g.AddNode(&graph.Node{
				ID:   e.To,
				Name: strings.SplitN(e.To, ":", 2)[1],
				Type: strings.SplitN(e.To, ":", 2)[0],
			})
		}

		// Resolve packages
		s.resolvePackages(ctx, g)

		// Use resolved package if not provided
		if objPkg == "" {
			if n := g.GetNode(nodeID); n != nil && n.Package != "" {
				objPkg = n.Package
			}
		}

		report := g.CheckBoundaries(objPkg, &graph.BoundaryOptions{
			Whitelist:      whitelist,
			IncludeDynamic: true,
			IncludeStandard: format == "full",
		})

		return formatBoundaryResult(report, format)
	}

	// Mode 3: Package-level analysis — read all objects in package
	if pkg != "" && s.adtClient != nil {
		// Get package contents
		pkgContent, err := s.adtClient.GetPackage(ctx, pkg)
		if err != nil {
			return newToolResultError(fmt.Sprintf("Failed to list package %s: %v", pkg, err)), nil
		}

		maxObjects := 50
		if depth > 1 {
			maxObjects = 20
		}
		count := 0

		for _, obj := range pkgContent.Objects {
			if count >= maxObjects {
				break
			}

			// Only analyze source-bearing objects
			objType := strings.ToUpper(obj.Type)
			if objType != "CLAS" && objType != "PROG" && objType != "FUGR" && objType != "INTF" {
				continue
			}

			source, err := s.adtClient.GetSource(ctx, "", obj.Name, nil)
			if err != nil {
				continue // Skip unreadable objects
			}

			nodeID := graph.NodeID(objType, obj.Name)
			g.AddNode(&graph.Node{
				ID:      nodeID,
				Name:    obj.Name,
				Type:    objType,
				Package: strings.ToUpper(pkg),
			})

			edges := graph.ExtractDepsFromSource(source, nodeID)
			dynEdges := graph.ExtractDynamicCalls(source, nodeID)
			for _, e := range append(edges, dynEdges...) {
				g.AddEdge(e)
				g.AddNode(&graph.Node{
					ID:   e.To,
					Name: strings.SplitN(e.To, ":", 2)[1],
					Type: strings.SplitN(e.To, ":", 2)[0],
				})
			}
			count++
		}

		// Resolve packages for all nodes
		s.resolvePackages(ctx, g)

		report := g.CheckBoundaries(strings.ToUpper(pkg), &graph.BoundaryOptions{
			Whitelist:      whitelist,
			IncludeDynamic: true,
			IncludeStandard: format == "full",
		})

		return formatBoundaryResult(report, format)
	}

	return newToolResultError("SAP connection required for online analysis. Provide 'source' for offline mode."), nil
}

// resolvePackages queries TADIR to fill in missing package info for nodes.
func (s *Server) resolvePackages(ctx context.Context, g *graph.Graph) {
	// Collect nodes without packages
	var names []string
	nodesByName := make(map[string][]*graph.Node)

	for _, n := range g.Nodes() {
		if n.Package == "" && !graph.IsStandardObject(n.Name) && !strings.HasPrefix(n.ID, "DYNAMIC:") {
			names = append(names, n.Name)
			nodesByName[strings.ToUpper(n.Name)] = append(nodesByName[strings.ToUpper(n.Name)], n)
		}
	}

	if len(names) == 0 {
		return
	}

	// Batch query TADIR (up to 100 at a time)
	batchSize := 100
	for i := 0; i < len(names); i += batchSize {
		end := i + batchSize
		if end > len(names) {
			end = len(names)
		}
		batch := names[i:end]

		// Build IN clause
		quoted := make([]string, len(batch))
		for j, n := range batch {
			quoted[j] = "'" + strings.ToUpper(n) + "'"
		}
		inClause := strings.Join(quoted, ",")

		query := fmt.Sprintf("SELECT obj_name, devclass FROM tadir WHERE pgmid = 'R3TR' AND obj_name IN (%s)", inClause)

		result, err := s.adtClient.RunQuery(ctx, query, 0)
		if err != nil {
			continue // Best effort
		}

		// Parse result and update nodes
		for _, row := range result.Rows {
			objName := strings.ToUpper(strings.TrimSpace(fmt.Sprintf("%v", row["OBJ_NAME"])))
			devclass := strings.ToUpper(strings.TrimSpace(fmt.Sprintf("%v", row["DEVCLASS"])))
			if nodes, ok := nodesByName[objName]; ok {
				for _, n := range nodes {
					if n.Package == "" {
						n.Package = devclass
					}
				}
			}
		}
	}
}

// handleGraphStats returns statistics about the current in-memory graph.
func (s *Server) handleGraphStats(ctx context.Context, request mcp.CallToolRequest) (*mcp.CallToolResult, error) {
	// For now, build a fresh graph from provided source
	args := request.GetArguments()
	sourceCode := getStringParam(args, "source")

	if sourceCode == "" {
		return newToolResultError("Provide 'source' parameter with ABAP source code"), nil
	}

	g := graph.New()
	nodeID := graph.NodeID("PROG", "SOURCE")
	g.AddNode(&graph.Node{ID: nodeID, Name: "SOURCE", Type: "PROG"})

	edges := graph.ExtractDepsFromSource(sourceCode, nodeID)
	dynEdges := graph.ExtractDynamicCalls(sourceCode, nodeID)
	for _, e := range append(edges, dynEdges...) {
		g.AddEdge(e)
		g.AddNode(&graph.Node{
			ID:   e.To,
			Name: strings.SplitN(e.To, ":", 2)[1],
			Type: strings.SplitN(e.To, ":", 2)[0],
		})
	}

	stats := g.Stats()
	result, _ := json.MarshalIndent(stats, "", "  ")
	return mcp.NewToolResultText(string(result)), nil
}

func formatBoundaryResult(report *graph.BoundaryReport, format string) (*mcp.CallToolResult, error) {
	switch format {
	case "json":
		result, _ := json.MarshalIndent(report, "", "  ")
		return mcp.NewToolResultText(string(result)), nil
	default:
		return mcp.NewToolResultText(report.FormatText()), nil
	}
}
