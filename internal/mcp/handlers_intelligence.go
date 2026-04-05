// Package mcp provides the MCP server implementation for ABAP ADT tools.
// handlers_intelligence.go contains handlers for Intelligence Layer tools
// (AnalyzeSQLPerformance, GetImpactAnalysis, CheckRegression).
package mcp

import (
	"context"
	"encoding/json"
	"fmt"

	"github.com/mark3labs/mcp-go/mcp"
	"github.com/oisee/vibing-steampunk/pkg/adt"
)

func (s *Server) handleAnalyzeSQLPerformance(ctx context.Context, request mcp.CallToolRequest) (*mcp.CallToolResult, error) {
	sqlQuery, ok := request.GetArguments()["sql_query"].(string)
	if !ok || sqlQuery == "" {
		return newToolResultError("sql_query is required"), nil
	}

	// Detect HANA availability via feature probing
	hanaAvailable := false
	if s.featureProber != nil {
		hanaAvailable = s.featureProber.IsAvailable(ctx, adt.FeatureAMDP)
	}

	result, err := s.adtClient.AnalyzeSQLPerformance(ctx, sqlQuery, hanaAvailable)
	if err != nil {
		return newToolResultError(fmt.Sprintf("SQL analysis failed: %v", err)), nil
	}

	output, _ := json.MarshalIndent(result, "", "  ")
	return mcp.NewToolResultText(string(output)), nil
}

func (s *Server) handleGetImpactAnalysis(ctx context.Context, request mcp.CallToolRequest) (*mcp.CallToolResult, error) {
	objectURI, ok := request.GetArguments()["object_uri"].(string)
	if !ok || objectURI == "" {
		return newToolResultError("object_uri is required"), nil
	}

	objectName := ""
	if v, ok := request.GetArguments()["object_name"].(string); ok {
		objectName = v
	}

	opts := adt.ImpactAnalysisOptions{}

	if v, ok := request.GetArguments()["max_depth"].(float64); ok && v > 0 {
		opts.MaxDepth = int(v)
	}
	if v, ok := request.GetArguments()["include_transitive"].(bool); ok {
		opts.Transitive = v
	}
	if v, ok := request.GetArguments()["include_dynamic"].(bool); ok {
		opts.DynamicPatterns = v
	}
	if v, ok := request.GetArguments()["include_config"].(bool); ok {
		opts.ExtensionPoints = v
	}
	if v, ok := request.GetArguments()["scope_packages"].([]interface{}); ok {
		for _, p := range v {
			if s, ok := p.(string); ok {
				opts.ScopePackages = append(opts.ScopePackages, s)
			}
		}
	}

	result, err := s.adtClient.GetImpactAnalysis(ctx, objectURI, objectName, opts)
	if err != nil {
		return newToolResultError(fmt.Sprintf("Impact analysis failed: %v", err)), nil
	}

	output, _ := json.MarshalIndent(result, "", "  ")
	return mcp.NewToolResultText(string(output)), nil
}

func (s *Server) handleCheckRegression(ctx context.Context, request mcp.CallToolRequest) (*mcp.CallToolResult, error) {
	objectURI, ok := request.GetArguments()["object_uri"].(string)
	if !ok || objectURI == "" {
		return newToolResultError("object_uri is required"), nil
	}

	baseVersion := ""
	if v, ok := request.GetArguments()["base_version"].(string); ok {
		baseVersion = v
	}

	result, err := s.adtClient.CheckRegression(ctx, objectURI, baseVersion)
	if err != nil {
		return newToolResultError(fmt.Sprintf("Regression check failed: %v", err)), nil
	}

	output, _ := json.MarshalIndent(result, "", "  ")
	return mcp.NewToolResultText(string(output)), nil
}
