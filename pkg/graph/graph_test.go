package graph

import (
	"testing"
)

func TestNormalizeInclude(t *testing.T) {
	tests := []struct {
		include  string
		wantID   string
		wantType string
		wantName string
	}{
		{"ZCL_FOO========CP", "CLAS:ZCL_FOO", "CLAS", "ZCL_FOO"},
		{"ZCL_FOO========CU", "CLAS:ZCL_FOO", "CLAS", "ZCL_FOO"},
		{"ZCL_FOO========CM001", "CLAS:ZCL_FOO", "CLAS", "ZCL_FOO"},
		{"ZCL_FOO========CT", "CLAS:ZCL_FOO", "CLAS", "ZCL_FOO"},
		{"ZIF_BAR========IP", "INTF:ZIF_BAR", "INTF", "ZIF_BAR"},
		{"ZIF_BAR========IU", "INTF:ZIF_BAR", "INTF", "ZIF_BAR"},
		{"ZREPORT", "PROG:ZREPORT", "PROG", "ZREPORT"},
	}

	for _, tt := range tests {
		t.Run(tt.include, func(t *testing.T) {
			id, typ, name := NormalizeInclude(tt.include)
			if id != tt.wantID {
				t.Errorf("ID: got %q, want %q", id, tt.wantID)
			}
			if typ != tt.wantType {
				t.Errorf("Type: got %q, want %q", typ, tt.wantType)
			}
			if name != tt.wantName {
				t.Errorf("Name: got %q, want %q", name, tt.wantName)
			}
		})
	}
}

func TestIsStandardObject(t *testing.T) {
	tests := []struct {
		name string
		want bool
	}{
		{"CL_GUI_ALV_GRID", true},
		{"ZCL_CUSTOM", false},
		{"YCL_CUSTOM", false},
		{"BAPI_USER_GET_DETAIL", true},
		{"", true},
	}
	for _, tt := range tests {
		if got := IsStandardObject(tt.name); got != tt.want {
			t.Errorf("IsStandardObject(%q) = %v, want %v", tt.name, got, tt.want)
		}
	}
}

func TestGraphBasics(t *testing.T) {
	g := New()

	// Add nodes
	g.AddNode(&Node{ID: "CLAS:ZCL_A", Name: "ZCL_A", Type: "CLAS", Package: "$ZDEV"})
	g.AddNode(&Node{ID: "CLAS:ZCL_B", Name: "ZCL_B", Type: "CLAS", Package: "$ZDEV"})
	g.AddNode(&Node{ID: "CLAS:ZCL_EXT", Name: "ZCL_EXT", Type: "CLAS", Package: "$ZOTHER"})

	if g.NodeCount() != 3 {
		t.Errorf("NodeCount: got %d, want 3", g.NodeCount())
	}

	// Add edges
	g.AddEdge(&Edge{From: "CLAS:ZCL_A", To: "CLAS:ZCL_B", Kind: EdgeCalls, Source: SourceParser})
	g.AddEdge(&Edge{From: "CLAS:ZCL_A", To: "CLAS:ZCL_EXT", Kind: EdgeReferences, Source: SourceCROSS})

	if g.EdgeCount() != 2 {
		t.Errorf("EdgeCount: got %d, want 2", g.EdgeCount())
	}

	// Check adjacency
	out := g.OutEdges("CLAS:ZCL_A")
	if len(out) != 2 {
		t.Errorf("OutEdges(ZCL_A): got %d, want 2", len(out))
	}
	in := g.InEdges("CLAS:ZCL_B")
	if len(in) != 1 {
		t.Errorf("InEdges(ZCL_B): got %d, want 1", len(in))
	}

	// Node merge
	g.AddNode(&Node{ID: "CLAS:ZCL_A", Package: "$ZNEW"}) // package won't overwrite non-empty
	if n := g.GetNode("CLAS:ZCL_A"); n.Package != "$ZDEV" {
		t.Errorf("Package should not be overwritten: got %q", n.Package)
	}
	g.AddNode(&Node{ID: "CLAS:ZCL_B", Package: ""}) // empty won't overwrite
	if n := g.GetNode("CLAS:ZCL_B"); n.Package != "$ZDEV" {
		t.Errorf("Package should stay: got %q", n.Package)
	}
}

func TestGraphStats(t *testing.T) {
	g := New()
	g.AddNode(&Node{ID: "CLAS:ZCL_A", Type: "CLAS", Package: "$ZDEV"})
	g.AddNode(&Node{ID: "PROG:ZPROG", Type: "PROG", Package: "$ZDEV"})
	g.AddNode(&Node{ID: "CLAS:CL_STD", Type: "CLAS", Package: "SLIS"})
	g.AddEdge(&Edge{From: "CLAS:ZCL_A", To: "PROG:ZPROG", Kind: EdgeCalls, Source: SourceParser})
	g.AddEdge(&Edge{From: "CLAS:ZCL_A", To: "CLAS:CL_STD", Kind: EdgeReferences, Source: SourceCROSS})

	s := g.Stats()
	if s.NodeCount != 3 {
		t.Errorf("Stats.NodeCount: got %d, want 3", s.NodeCount)
	}
	if s.EdgeCount != 2 {
		t.Errorf("Stats.EdgeCount: got %d, want 2", s.EdgeCount)
	}
	if s.ByNodeType["CLAS"] != 2 {
		t.Errorf("Stats.ByNodeType[CLAS]: got %d, want 2", s.ByNodeType["CLAS"])
	}
	if s.ByEdgeKind[EdgeCalls] != 1 {
		t.Errorf("Stats.ByEdgeKind[CALLS]: got %d, want 1", s.ByEdgeKind[EdgeCalls])
	}
	if s.BySource[SourceParser] != 1 {
		t.Errorf("Stats.BySource[PARSER]: got %d, want 1", s.BySource[SourceParser])
	}
}

func TestExtractDepsFromSource(t *testing.T) {
	source := `REPORT ztest.
DATA lo TYPE REF TO zcl_helper.
DATA lt TYPE TABLE OF ztable.
CALL FUNCTION 'Z_MY_FUNC' EXPORTING iv = lv.
SUBMIT zother_report.
CREATE OBJECT lo TYPE zcl_factory.
SELECT * FROM ztable INTO TABLE lt.
INCLUDE ztest_incl.
lo->method( ).
zcl_utils=>static_method( ).
`

	edges := ExtractDepsFromSource(source, "PROG:ZTEST")

	// Collect edge details
	found := make(map[string]bool)
	for _, e := range edges {
		key := string(e.Kind) + ":" + e.To
		found[key] = true
		t.Logf("Edge: %s → %s (%s, %s) [%s]", e.From, e.To, e.Kind, e.Source, e.RefDetail)
	}

	// Check expected edges
	expected := []struct {
		kind EdgeKind
		to   string
	}{
		{EdgeCalls, "FUGR:Z_MY_FUNC"},
		{EdgeCalls, "PROG:ZOTHER_REPORT"},
		{EdgeReferences, "CLAS:ZCL_HELPER"},
		{EdgeReferences, "CLAS:ZCL_FACTORY"},
		{EdgeContainsInclude, "PROG:ZTEST_INCL"},
		{EdgeCalls, "CLAS:ZCL_UTILS"},
	}

	for _, exp := range expected {
		key := string(exp.kind) + ":" + exp.to
		if !found[key] {
			t.Errorf("Missing edge: %s → %s", exp.kind, exp.to)
		}
	}

	// Check SELECT FROM
	hasTableRef := false
	for _, e := range edges {
		if e.Kind == EdgeReferences && e.To == "TABL:ZTABLE" {
			hasTableRef = true
		}
	}
	if !hasTableRef {
		t.Error("Missing SELECT FROM ztable reference")
	}
}

func TestExtractDynamicCalls(t *testing.T) {
	source := `REPORT ztest.
DATA lv_fm TYPE string.
lv_fm = 'Z_DYNAMIC_FM'.
CALL FUNCTION lv_fm EXPORTING iv = lv.
SUBMIT (lv_prog).
CREATE OBJECT lo TYPE (lv_class).
`

	edges := ExtractDynamicCalls(source, "PROG:ZTEST")

	if len(edges) == 0 {
		t.Fatal("Expected dynamic call edges, got none")
	}

	for _, e := range edges {
		if e.Kind != EdgeDynamic {
			t.Errorf("Expected DYNAMIC_CALL kind, got %s", e.Kind)
		}
		t.Logf("Dynamic: %s → %s [%s]", e.From, e.To, e.RefDetail)
	}

	// At least CALL FUNCTION lv_fm should be detected
	found := false
	for _, e := range edges {
		if e.RefDetail == "DYNAMIC_FM:lv_fm" {
			found = true
		}
	}
	if !found {
		t.Error("Missing dynamic FM call detection for lv_fm")
	}
}
