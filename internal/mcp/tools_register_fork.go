// Package mcp provides fork-specific tool registrations.
// This file registers tools contributed by the fork (blicksten/vibing-steampunk)
// that are not yet merged into upstream.
package mcp

import (
	"github.com/mark3labs/mcp-go/mcp"
)

// registerForkTools registers all fork-specific tools.
// This is the ONLY integration point with upstream's tools_register.go.
func (s *Server) registerForkTools(shouldRegister func(string) bool) {
	s.registerIntelligenceTools(shouldRegister)
}

// registerIntelligenceTools registers impact analysis, regression detection,
// and SQL performance analysis tools.
func (s *Server) registerIntelligenceTools(shouldRegister func(string) bool) {
	if shouldRegister("AnalyzeSQLPerformance") {
		s.mcpServer.AddTool(
			mcp.NewTool("AnalyzeSQLPerformance",
				mcp.WithDescription("Analyze SQL query performance using text patterns and HANA execution plan (if available). Detects SELECT *, missing WHERE, CLIENT SPECIFIED, full table scans, missing indexes, nested loops, cartesian products."),
				mcp.WithString("sql_query", mcp.Required(), mcp.Description("SQL query to analyze (ABAP SQL or native SQL)")),
			),
			s.handleAnalyzeSQLPerformance,
		)
	}

	if shouldRegister("GetImpactAnalysis") {
		s.mcpServer.AddTool(
			mcp.NewTool("GetImpactAnalysis",
				mcp.WithDescription("Multi-layer blast radius analysis for an ABAP object change. Layer 1: static references (FindReferences). Layer 2: transitive callers (call graph). Layer 3: dynamic call patterns (string literal search). Layer 4: config-driven calls (BAdI, enhancements, user exits)."),
				mcp.WithString("object_uri", mcp.Required(), mcp.Description("ADT URI of the object to analyze (e.g. /sap/bc/adt/oo/classes/zcl_example)")),
				mcp.WithNumber("max_depth", mcp.Description("Maximum transitive depth for Layer 2 (default: 2)")),
				mcp.WithBoolean("include_transitive", mcp.Description("Enable Layer 2: transitive callers via call graph (default: false)")),
				mcp.WithBoolean("include_dynamic", mcp.Description("Enable Layer 3: dynamic call pattern search (default: false)")),
				mcp.WithBoolean("include_config", mcp.Description("Enable Layer 4: config-driven calls — BAdI, enhancements (default: false)")),
			),
			s.handleGetImpactAnalysis,
		)
	}

	if shouldRegister("CheckRegression") {
		s.mcpServer.AddTool(
			mcp.NewTool("CheckRegression",
				mcp.WithDescription("Detect breaking changes by comparing current source with a previous version. Checks for: changed method signatures, removed public methods, changed interface methods, changed exception handling (RAISING clause)."),
				mcp.WithString("object_uri", mcp.Required(), mcp.Description("ADT URI of the object to check")),
				mcp.WithString("base_version", mcp.Description("Version number to compare against (default: previous version)")),
			),
			s.handleCheckRegression,
		)
	}
}
