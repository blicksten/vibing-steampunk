// Package mcp provides the MCP server implementation for ABAP ADT tools.
// handlers_atc.go contains handlers for ATC (ABAP Test Cockpit) operations.
package mcp

import (
	"context"
	"encoding/json"
	"fmt"

	"github.com/mark3labs/mcp-go/mcp"
	"github.com/oisee/vibing-steampunk/pkg/adt"
)

// routeATCAction routes "test" with type=atc.
func (s *Server) routeATCAction(ctx context.Context, action, objectType, objectName string, params map[string]any) (*mcp.CallToolResult, bool, error) {
	if action != "test" {
		return nil, false, nil
	}
	analysisType := getStringParam(params, "type")
	switch analysisType {
	case "atc":
		return s.callHandler(ctx, s.handleRunATCCheck, params)
	case "atc_customizing":
		return s.callHandler(ctx, s.handleGetATCCustomizing, params)
	}
	return nil, false, nil
}

// --- ATC Handlers ---

func (s *Server) handleRunATCCheck(ctx context.Context, request mcp.CallToolRequest) (*mcp.CallToolResult, error) {
	objectURL, ok := request.GetArguments()["object_url"].(string)
	if !ok || objectURL == "" {
		return newToolResultError("object_url is required"), nil
	}

	variant := ""
	if v, ok := request.GetArguments()["variant"].(string); ok {
		variant = v
	}

	maxResults := 100
	if mr, ok := request.GetArguments()["max_results"].(float64); ok && mr > 0 {
		maxResults = int(mr)
	}

	result, err := s.adtClient.RunATCCheck(ctx, objectURL, variant, maxResults)
	if err != nil {
		return newToolResultError(fmt.Sprintf("ATC check failed: %v", err)), nil
	}

	// Format output with summary
	type summary struct {
		TotalObjects  int `json:"totalObjects"`
		TotalFindings int `json:"totalFindings"`
		Errors        int `json:"errors"`
		Warnings      int `json:"warnings"`
		Infos         int `json:"infos"`
	}
	type output struct {
		Summary  summary          `json:"summary"`
		Worklist *adt.ATCWorklist `json:"worklist"`
	}

	sum := summary{TotalObjects: len(result.Objects)}
	for _, obj := range result.Objects {
		sum.TotalFindings += len(obj.Findings)
		for _, f := range obj.Findings {
			switch f.Priority {
			case 1:
				sum.Errors++
			case 2:
				sum.Warnings++
			default:
				sum.Infos++
			}
		}
	}

	out := output{Summary: sum, Worklist: result}
	outputJSON, err := json.MarshalIndent(out, "", "  ")
	if err != nil {
		return newToolResultError(fmt.Sprintf("serializing result: %v", err)), nil
	}
	return mcp.NewToolResultText(string(outputJSON)), nil
}

func (s *Server) handleRunATCCheckTransport(ctx context.Context, request mcp.CallToolRequest) (*mcp.CallToolResult, error) {
	transport, ok := request.GetArguments()["transport"].(string)
	if !ok || transport == "" {
		return newToolResultError("transport is required"), nil
	}

	variant := ""
	if v, ok := request.GetArguments()["variant"].(string); ok {
		variant = v
	}

	maxResults := 100
	if mr, ok := request.GetArguments()["max_results"].(float64); ok && mr > 0 {
		maxResults = int(mr)
	}

	// Get transport objects (requires --enable-transports or --allow-transportable-edits)
	trInfo, err := s.adtClient.GetTransport(ctx, transport)
	if err != nil {
		return newToolResultError(fmt.Sprintf("GetTransport failed: %v\nHint: RunATCCheckTransport requires transport access. Use --enable-transports flag.", err)), nil
	}

	// Collect ADT URLs for ABAP source objects (deduplicated)
	seen := make(map[string]bool)
	var objectURLs []string
	for _, obj := range trInfo.Objects {
		url := adt.TransportObjectToADTURL(obj.PgmID, obj.Type, obj.Name)
		if url != "" && !seen[url] {
			seen[url] = true
			objectURLs = append(objectURLs, url)
		}
	}

	if len(objectURLs) == 0 {
		return mcp.NewToolResultText(fmt.Sprintf("Transport %s contains no R3TR-level ATC-checkable objects (CLAS, INTF, PROG, FUGR, DCLS, DDLS, BDEF). LIMU sub-objects are covered via their parent R3TR entries.", transport)), nil
	}

	result, err := s.adtClient.RunATCCheckObjects(ctx, objectURLs, variant, maxResults)
	if err != nil {
		return newToolResultError(fmt.Sprintf("ATC check failed: %v", err)), nil
	}

	// Format output with summary
	type summary struct {
		Transport     string `json:"transport"`
		ObjectsInRun  int    `json:"objectsInRun"`
		TotalObjects  int    `json:"totalObjects"`
		TotalFindings int    `json:"totalFindings"`
		Errors        int    `json:"errors"`
		Warnings      int    `json:"warnings"`
		Infos         int    `json:"infos"`
	}
	type output struct {
		Summary  summary          `json:"summary"`
		Worklist *adt.ATCWorklist `json:"worklist"`
	}

	sum := summary{
		Transport:    transport,
		ObjectsInRun: len(objectURLs),
		TotalObjects: len(result.Objects),
	}
	for _, obj := range result.Objects {
		sum.TotalFindings += len(obj.Findings)
		for _, f := range obj.Findings {
			switch f.Priority {
			case 1:
				sum.Errors++
			case 2:
				sum.Warnings++
			default:
				sum.Infos++
			}
		}
	}

	out := output{Summary: sum, Worklist: result}
	outputJSON, err := json.MarshalIndent(out, "", "  ")
	if err != nil {
		return newToolResultError(fmt.Sprintf("serializing result: %v", err)), nil
	}
	return mcp.NewToolResultText(string(outputJSON)), nil
}

func (s *Server) handleGetATCCustomizing(ctx context.Context, request mcp.CallToolRequest) (*mcp.CallToolResult, error) {
	result, err := s.adtClient.GetATCCustomizing(ctx)
	if err != nil {
		return newToolResultError(fmt.Sprintf("Failed to get ATC customizing: %v", err)), nil
	}

	output, err := json.MarshalIndent(result, "", "  ")
	if err != nil {
		return newToolResultError(fmt.Sprintf("serializing result: %v", err)), nil
	}
	return mcp.NewToolResultText(string(output)), nil
}
