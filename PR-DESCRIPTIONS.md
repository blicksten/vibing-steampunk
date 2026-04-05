# PR Descriptions for vibing-steampunk contributions

---

## PR #1: ADT Refactoring Tools

**Title:** `feat: add ADT refactoring and quick fix tools (5 tools, 33 tests)`

**URL:** https://github.com/oisee/vibing-steampunk/compare/main...blicksten:vibing-steampunk:feat/adt-refactoring

**Body:**

```
## Summary

Add ADT-native refactoring support via SAP ADT REST API — 5 new tools with 33 unit tests:

- **RenameRefactoring** — evaluate/preview/execute rename with full cross-reference support
- **ExtractMethod** — extract code block into new method with auto-inferred parameters
- **GetQuickFixProposals** — get auto-fix suggestions after SyntaxCheck
- **ApplyQuickFix** — apply a quick fix proposal to source code
- **ApplyATCQuickFix** — get details or apply ATC finding quick fixes

## Files

| File | Lines | Description |
|------|-------|-------------|
| `pkg/adt/refactoring.go` | 463 | Client methods for Rename and ExtractMethod |
| `pkg/adt/quickfix.go` | 254 | Client methods for QuickFix and ATC QuickFix |
| `pkg/adt/refactoring_test.go` | 375 | 14 unit tests |
| `pkg/adt/quickfix_test.go` | 318 | 19 unit tests |
| `internal/mcp/handlers_refactoring.go` | 223 | MCP tool handlers |
| `internal/mcp/tools_register.go` | +127 | Tool registration |
| `internal/mcp/tools_focused.go` | +7 | Focused mode whitelist |

## ADT API endpoints

- `POST /sap/bc/adt/refactorings/rename` — Rename refactoring (3-step flow)
- `POST /sap/bc/adt/refactorings/extractmethod` — Extract Method (3-step flow)
- `POST /sap/bc/adt/quickfixes/evaluation` — Quick fix proposals
- `POST /sap/bc/adt/quickfixes/apply` — Apply quick fix
- `GET/POST /sap/bc/adt/atc/quickfixes/{findingId}` — ATC quick fix

## Test plan

- [x] `go build ./cmd/vsp` compiles clean
- [x] `go test ./pkg/adt/` — 33 new tests pass, no regressions
- [ ] Integration test with SAP system (requires ADT connection)
```

---

## PR #2: Version History Tools

**Title:** `feat: add version history tools (3 tools, 8 tests)`

**URL:** https://github.com/oisee/vibing-steampunk/compare/main...blicksten:vibing-steampunk:feat/version-history

**Body:**

```
## Summary

Add object version history support via SAP ADT Atom feed API — 3 new tools with 8 unit tests:

- **GetRevisions** — list version history with dates, authors, transport requests
- **GetRevisionSource** — get source code of a specific version
- **CompareVersions** — unified diff between two versions (or vs current)

Also adds `Name` field to `Link` struct for transport request extraction from Atom feeds, and `Revision`/`ParseRevisionFeed` types to `xml.go`.

## Files

| File | Lines | Description |
|------|-------|-------------|
| `pkg/adt/revisions.go` | 193 | Client methods for version history |
| `pkg/adt/revisions_test.go` | 335 | 8 unit tests (feed parsing, URL resolution, client) |
| `internal/mcp/handlers_revisions.go` | 83 | MCP tool handlers |
| `internal/mcp/tools_register.go` | +61 | Tool registration |
| `internal/mcp/tools_focused.go` | +5 | Focused mode whitelist |
| `pkg/adt/xml.go` | +67 | Revision types + Link.Name field |

## ADT API endpoints

- `GET /sap/bc/adt/.../versions` — Atom feed with version history
- `GET /sap/bc/adt/.../versions/{id}/content` — Version source code

## Test plan

- [x] `go build ./cmd/vsp` compiles clean
- [x] `go test ./pkg/adt/` — 8 new tests pass, no regressions
- [ ] Integration test with SAP system
```

---

## PR #3: Testing & Quality Tools

**Title:** `feat: add testing and quality tools (3 tools, 13 tests)`

**URL:** https://github.com/oisee/vibing-steampunk/compare/main...blicksten:vibing-steampunk:feat/testing-quality

**Body:**

```
## Summary

Add code quality and testing tools via SAP ADT API — 3 new tools with 13 unit tests:

- **GetCodeCoverage** — run ABAP Unit tests with line-level statement/branch/procedure coverage
- **GetSQLExplainPlan** — get SQL execution plan with operators, costs, row estimates (HANA only)
- **GetCheckRunResults** — get detailed check run findings with severity and line numbers

## Files

| File | Lines | Description |
|------|-------|-------------|
| `pkg/adt/testing.go` | 440 | Client methods for coverage, explain plan, check results |
| `pkg/adt/testing_test.go` | 374 | 13 unit tests |
| `internal/mcp/handlers_testing.go` | 72 | MCP tool handlers |
| `internal/mcp/tools_register.go` | +40 | Tool registration |
| `internal/mcp/tools_focused.go` | +5 | Focused mode whitelist |

## ADT API endpoints

- `POST /sap/bc/adt/abapunit/testruns` (with coverage headers) — Coverage data
- `POST /sap/bc/adt/runtime/traces/dbaccess/explain` — SQL explain plan
- `GET /sap/bc/adt/checkruns/{id}/results` — Check run results

## Test plan

- [x] `go build ./cmd/vsp` compiles clean
- [x] `go test ./pkg/adt/` — 13 new tests pass, no regressions
- [ ] Integration test with SAP system (GetSQLExplainPlan requires HANA)
```

---

## PR #4: CDS Impact Analysis & Element Info

**Title:** `feat: add CDS impact analysis and element info tools (2 tools, 10 tests)`

**URL:** https://github.com/oisee/vibing-steampunk/compare/main...blicksten:vibing-steampunk:feat/cds-tools

**Body:**

```
## Summary

Add CDS view analysis tools via SAP ADT API — 2 new tools with 10 unit tests:

- **GetCDSImpactAnalysis** — reverse where-used for CDS views (all downstream consumers)
- **GetCDSElementInfo** — field metadata: names, types, descriptions, annotations, semantics

Complements the existing `GetCDSDependencies` (forward deps) with reverse lookup and element-level detail.

## Files

| File | Lines | Description |
|------|-------|-------------|
| `pkg/adt/cds_tools.go` | 178 | Client methods for CDS analysis |
| `pkg/adt/cds_tools_test.go` | 210 | 10 unit tests |
| `internal/mcp/handlers_cds.go` | 72 | MCP tool handlers |
| `internal/mcp/tools_register.go` | +26 | Tool registration |
| `internal/mcp/tools_focused.go` | +4 | Focused mode whitelist |

## ADT API endpoints

- `GET /sap/bc/adt/ddic/ddl/sources/{name}/impactanalysis` — CDS where-used
- `GET /sap/bc/adt/ddic/ddl/sources/{name}/elementinfo` — CDS element metadata

## Test plan

- [x] `go build ./cmd/vsp` compiles clean
- [x] `go test ./pkg/adt/` — 10 new tests pass, no regressions
- [ ] Integration test with SAP system
```

---

## PR #5: Intelligence Layer

**Title:** `feat: add Intelligence Layer — 4 AI code analysis tools (46 tests)`

**URL:** https://github.com/oisee/vibing-steampunk/compare/main...blicksten:vibing-steampunk:feat/intelligence-layer

**Body:**

```
## Summary

Add server-side intelligence tools for automated code review and analysis — 4 new tools with 46 unit tests:

- **AnalyzeSQLPerformance** — text-based SQL analysis (SELECT *, missing WHERE, CLIENT SPECIFIED) + HANA execution plan analysis (full table scans, nested loops, missing indexes)
- **GetImpactAnalysis** — 4-layer blast radius analysis:
  - Layer 1: static cross-references (FindReferences)
  - Layer 2: transitive callers (call graph)
  - Layer 3: dynamic call risk (string literal search)
  - Layer 4: config-driven calls (BAdI, enhancements, user exits)
- **AnalyzeABAPCode** — 21-rule source analysis across 4 categories (performance, security, robustness, quality) with two-pass statement assembler
- **CheckRegression** — diff-based breaking change detection (method signatures, removed public methods, interface changes, RAISING clauses)

**Note:** This PR includes `revisions.go` and `testing.go` as dependencies (used by CheckRegression and AnalyzeSQLPerformance respectively). If PR #2 and PR #3 are merged first, these files can be dropped from this PR.

## Files

| File | Lines | Description |
|------|-------|-------------|
| `pkg/adt/codeanalysis.go` | 835 | 21-rule ABAP code analyzer |
| `pkg/adt/codeanalysis_test.go` | 414 | Tests for code analysis rules |
| `pkg/adt/sqlperf.go` | 356 | SQL performance analyzer (text + plan) |
| `pkg/adt/sqlperf_test.go` | 317 | Tests for SQL analysis |
| `pkg/adt/impact.go` | 374 | 4-layer impact analysis |
| `pkg/adt/impact_test.go` | 250 | Tests for impact analysis |
| `pkg/adt/regression.go` | 358 | Breaking change detector |
| `pkg/adt/regression_test.go` | 276 | Tests for regression detection |
| `pkg/adt/revisions.go` | 193 | (dependency) Version history |
| `pkg/adt/testing.go` | 440 | (dependency) SQL explain plan types |
| `pkg/adt/xml.go` | +62 | Revision types for regression detection |
| `internal/mcp/handlers_intelligence.go` | 85 | Handlers for impact + regression |
| `internal/mcp/handlers_codeanalysis.go` | 56 | Handlers for code + SQL analysis |
| `internal/mcp/tools_register.go` | +71 | Tool registration |
| `internal/mcp/tools_focused.go` | +6 | Focused mode whitelist |

## Architecture

All 4 tools run analysis **server-side in Go** — no SAP roundtrip needed for most rules. Only `GetImpactAnalysis` and `CheckRegression` call ADT APIs for cross-references and version history.

The code analysis rules are intentionally conservative (low false-positive rate) and focus on patterns that are unambiguously problematic in ABAP.

## Test plan

- [x] `go build ./cmd/vsp` compiles clean
- [x] `go test ./pkg/adt/` — 46 new tests pass, no regressions
- [ ] Integration test with SAP system (for Layer 1-2 of impact analysis)
```

---

## PR #6: RunATCCheckTransport + Timeout

**Title:** `feat: add RunATCCheckTransport tool and configurable HTTP timeout`

**URL:** https://github.com/oisee/vibing-steampunk/compare/main...blicksten:vibing-steampunk:feat/atc-transport-timeout

**Body:**

```
## Summary

Two features in one PR:

### RunATCCheckTransport
Run ATC code quality checks on **all source objects in a transport request** in a single batch. Resolves R3TR objects (CLAS, INTF, PROG, FUGR, DCLS, DDLS, BDEF), deduplicates, and runs ATC via `CreateATCRunMulti`. Requires `--enable-transports` flag.

### Configurable HTTP Timeout
- `--timeout` / `SAP_TIMEOUT`: HTTP request timeout (default 60s, `0` = no timeout)
- Added `Timeout` field to MCP Config, passed through to ADT client via `WithTimeout()`

### Security hardening (ATC endpoints)
- `url.Values` for all query parameters (prevents injection)
- `url.PathEscape` for URL path segments (namespace support)
- Correct versioned Content-Type: `application/vnd.sap.atc.run.parameters.v1+xml`
- Correct Accept header: `application/vnd.sap.atc.worklist.v1+xml`
- `json.MarshalIndent` error handling in all 3 ATC handlers

## Files changed

| File | Change |
|------|--------|
| `pkg/adt/devtools.go` | +84: CreateATCRunMulti, TransportObjectToADTURL, RunATCCheckObjects, URL encoding fixes |
| `internal/mcp/handlers_atc.go` | +93: handleRunATCCheckTransport handler, error handling fixes |
| `internal/mcp/tools_register.go` | +16: RunATCCheckTransport registration |
| `internal/mcp/server.go` | +9: Timeout field + WithTimeout() pass-through |
| `cmd/vsp/main.go` | +12: --timeout flag, viper binding, env resolution |

## Test plan

- [x] `go build ./cmd/vsp` compiles clean
- [x] `go test ./pkg/adt/` — no regressions
- [ ] Integration test with transport containing ABAP objects
```

---

## PR #7: HTTP/SSE Transport Mode

**Title:** `feat: add HTTP/SSE transport mode via --http-port flag`

**URL:** https://github.com/oisee/vibing-steampunk/compare/main...blicksten:vibing-steampunk:feat/http-sse-transport

**Body:**

```
## Summary

Add alternative MCP transport: serve over **SSE (Server-Sent Events)** instead of STDIO. Useful for remote access, multi-client scenarios, and web integrations.

- `--http-port` / `SAP_HTTP_PORT`: serve MCP over SSE on given port
- SSE endpoint at `http://127.0.0.1:<port>/sse`
- `/health` endpoint for liveness checks
- `ReadHeaderTimeout` (5s) + `IdleTimeout` (120s) for security
- `WriteTimeout` intentionally omitted (SSE connections are long-lived)

### Usage

```bash
vsp --http-port 8083 --url http://sap:50000 --user admin --password secret
# Then connect MCP client to http://127.0.0.1:8083/sse
```

## Files changed

| File | Change |
|------|--------|
| `internal/mcp/server.go` | +29: ServeHTTP method, HTTPPort config field |
| `cmd/vsp/main.go` | +18: --http-port flag, viper binding, env resolution, routing |

## Test plan

- [x] `go build ./cmd/vsp` compiles clean
- [ ] Manual test: start with --http-port, connect MCP client via SSE
```
