package adt

import (
	"context"
	"encoding/xml"
	"fmt"
	"net/http"
	"net/url"
	"strings"
)

// GetSQLExplainPlan returns the execution plan for a SQL query (HANA only).
func (c *Client) GetSQLExplainPlan(ctx context.Context, sqlQuery string) (*SQLExplainPlan, error) {
	if err := c.checkSafety(OpRead, "GetSQLExplainPlan"); err != nil {
		return nil, err
	}

	if sqlQuery == "" {
		return nil, fmt.Errorf("SQL query is required")
	}

	q := url.Values{}
	q.Set("rowNumber", "0") // We don't need actual data, just the plan

	resp, err := c.transport.Request(ctx, "/sap/bc/adt/datapreview/freestyle", &RequestOptions{
		Method:      http.MethodPost,
		Query:       q,
		Body:        []byte("EXPLAIN PLAN FOR " + sqlQuery),
		ContentType: "text/plain",
		Accept:      "application/xml",
	})
	if err != nil {
		// Fallback: try the dedicated explain endpoint
		resp, err = c.transport.Request(ctx, "/sap/bc/adt/datapreview/ddlServices/explain", &RequestOptions{
			Method:      http.MethodPost,
			Body:        []byte(sqlQuery),
			ContentType: "text/plain",
			Accept:      "application/xml",
		})
		if err != nil {
			return nil, fmt.Errorf("SQL explain plan failed: %w", err)
		}
	}

	return parseSQLExplainPlan(resp.Body, sqlQuery)
}

func parseSQLExplainPlan(data []byte, query string) (*SQLExplainPlan, error) {
	if len(data) == 0 {
		return &SQLExplainPlan{Query: query}, nil
	}

	xmlStr := string(data)
	// Strip common ADT namespace prefixes
	xmlStr = strings.ReplaceAll(xmlStr, "datapreview:", "")

	type planNode struct {
		XMLName  xml.Name   `xml:"node"`
		ID       int        `xml:"id,attr"`
		Operator string     `xml:"operator,attr"`
		Table    string     `xml:"tableName,attr"`
		Index    string     `xml:"indexName,attr"`
		Cost     float64    `xml:"cost,attr"`
		Rows     int        `xml:"outputRowCount,attr"`
		Children []planNode `xml:"node"`
	}

	type explainResult struct {
		XMLName xml.Name   `xml:"explainResult"`
		Nodes   []planNode `xml:"node"`
	}

	// Try structured XML first
	var resp explainResult
	if err := xml.Unmarshal([]byte(xmlStr), &resp); err != nil {
		// If XML parsing fails, return the raw response as a single-node plan
		rawStr := string(data)
		if len(rawStr) > 500 {
			rawStr = rawStr[:500] + "..."
		}
		return &SQLExplainPlan{
			Query: query,
			Nodes: []SQLPlanNode{
				{
					ID:       0,
					Operator: "RAW_RESPONSE",
					Table:    rawStr,
				},
			},
		}, nil
	}

	plan := &SQLExplainPlan{Query: query}
	var convertNodes func(nodes []planNode) []SQLPlanNode
	convertNodes = func(nodes []planNode) []SQLPlanNode {
		var result []SQLPlanNode
		for _, n := range nodes {
			node := SQLPlanNode{
				ID:       n.ID,
				Operator: n.Operator,
				Table:    n.Table,
				Index:    n.Index,
				Cost:     n.Cost,
				Rows:     n.Rows,
				Children: convertNodes(n.Children),
			}
			result = append(result, node)
		}
		return result
	}

	plan.Nodes = convertNodes(resp.Nodes)

	// Calculate total cost from root nodes
	for _, n := range plan.Nodes {
		plan.TotalCost += n.Cost
	}

	return plan, nil
}
