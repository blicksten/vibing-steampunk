// Package mcp provides the MCP server implementation for ABAP ADT tools.
// handlers_search.go contains handlers for object search operations.
package mcp

import (
	"context"
	"encoding/json"
	"fmt"

	"github.com/mark3labs/mcp-go/mcp"
)

// routeSearchAction routes "search" action.
func (s *Server) routeSearchAction(ctx context.Context, action, objectType, objectName string, params map[string]any) (*mcp.CallToolResult, bool, error) {
	if action != "search" {
		return nil, false, nil
	}
	// Target is the query string; could be "TYPE NAME" or just a query
	query := objectType
	if objectName != "" {
		query = objectType + " " + objectName
	}
	if query == "" {
		query = getStringParam(params, "query")
	}
	if query == "" {
		return nil, false, nil
	}
	args := map[string]any{"query": query}
	if v, ok := getFloatParam(params, "maxResults"); ok {
		args["maxResults"] = v
	}
	if v, ok := getFloatParam(params, "max_results"); ok {
		args["maxResults"] = v
	}
	return s.callHandler(ctx, s.handleSearchObject, args)
}

// --- Search Handlers ---

func (s *Server) handleSearchObject(ctx context.Context, request mcp.CallToolRequest) (*mcp.CallToolResult, error) {
	query, ok := request.Params.Arguments["query"].(string)
	if !ok || query == "" {
		return newToolResultError("query is required"), nil
	}

	maxResults := 100
	if mr, ok := request.Params.Arguments["maxResults"].(float64); ok && mr > 0 {
		maxResults = int(mr)
	}

	results, err := s.adtClient.SearchObject(ctx, query, maxResults)
	if err != nil {
		return newToolResultError(fmt.Sprintf("Failed to search: %v", err)), nil
	}

	output, _ := json.MarshalIndent(results, "", "  ")
	return mcp.NewToolResultText(string(output)), nil
}

// handleSourceSearch handles SRIS fulltext source search requests.
// This provides server-side search using HANA fulltext index, much faster than GrepPackages.
func (s *Server) handleSourceSearch(ctx context.Context, request mcp.CallToolRequest) (*mcp.CallToolResult, error) {
	query, ok := request.Params.Arguments["query"].(string)
	if !ok || query == "" {
		return newToolResultError("query is required"), nil
	}

	maxResults := 100
	if mr, ok := request.Params.Arguments["max_results"].(float64); ok && mr > 0 {
		maxResults = int(mr)
	}

	var objectTypes []string
	if ot, ok := request.Params.Arguments["object_types"].([]interface{}); ok {
		for _, v := range ot {
			if s, ok := v.(string); ok {
				objectTypes = append(objectTypes, s)
			}
		}
	}

	var packageNames []string
	if pn, ok := request.Params.Arguments["packages"].([]interface{}); ok {
		for _, v := range pn {
			if s, ok := v.(string); ok {
				packageNames = append(packageNames, s)
			}
		}
	}

	results, err := s.adtClient.SourceSearch(ctx, query, maxResults, objectTypes, packageNames)
	if err != nil {
		// Provide helpful error message if feature not available
		errMsg := err.Error()
		if contains404or501(errMsg) {
			return newToolResultError(
				"SourceSearch not available. SRIS may not be configured on this system. " +
					"Use GrepPackages as fallback, or activate SRIS_SOURCE_SEARCH business function via SFW5 " +
					"and run SRIS_CODE_SEARCH_PREPARATION to create the index."), nil
		}
		return newToolResultError(fmt.Sprintf("Source search failed: %v", err)), nil
	}

	output, _ := json.MarshalIndent(results, "", "  ")
	return mcp.NewToolResultText(string(output)), nil
}

// contains404or501 checks if error message indicates feature not available
func contains404or501(errMsg string) bool {
	return len(errMsg) > 0 && (
		errMsg[0] == '4' || errMsg[0] == '5' ||
		contains(errMsg, "404") || contains(errMsg, "501") ||
		contains(errMsg, "Not Found") || contains(errMsg, "Not Implemented"))
}

// contains is a simple substring check
func contains(s, substr string) bool {
	return len(s) >= len(substr) && (s == substr || len(s) > 0 && containsHelper(s, substr))
}

func containsHelper(s, substr string) bool {
	for i := 0; i <= len(s)-len(substr); i++ {
		if s[i:i+len(substr)] == substr {
			return true
		}
	}
	return false
}
