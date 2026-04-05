# CLAUDE.md

**vsp** — Go-native MCP server for SAP ABAP Development Tools (ADT). Single binary, 100 focused / 147 expert tools.

**Archive:** Previous CLAUDE.md saved as `CLAUDE_archive.md` for reference.

---

## Current Priorities

### 1. Graph Engine (`pkg/graph/`) — In Progress
Package boundary analysis, dependency graph unification.
- Initial impl: core types, parser-based dep extraction, boundary analyzer (11 tests)
- **Pending:** SQL adapters (CROSS/WBCROSSGT/D010INC), ADT API adapters, impact/path queries
- **Pending:** Unify existing `cmd/vsp/cli_deps.go`, `cli_extra.go`, `pkg/ctxcomp/analyzer.go`
- Design: [Report 002](reports/2026-04-05-002-graph-engine-design.md), [Report 003](reports/2026-04-05-003-graph-engine-alignment-for-claude.md)

### 2. GUI Debugger (Issue #2) — Strategic
Three-phase plan: MCP debug sessions → DAP (VS Code) → Web UI.
- ADT debugger REST API fully mapped from SAP source (`CL_TPDA_ADT_RES_APP`)
- Batch endpoint `/debugger/batch` discovered — enables efficient REST debugging
- Design: [Report 001](reports/2026-04-05-001-gui-debugger-design.md)

### 3. Open Issues
- **#88** Lock handle bug (user report, EditSource/WriteSource) — real bug, needs investigation
- **#55** RunReport in APC context — architectural limitation
- **#46, #45** Sync script cleanup — low effort

### 4. Known Unstable Areas
- **External Debugger** — HTTP unreliable, use WebSocket via ZADT_VSP
- **AMDP Debugger** — experimental, breakpoint triggering under investigation
- **UI5/BSP** — read-only, write needs alternate API

---

## Build & Test

```bash
go build -o vsp ./cmd/vsp              # Build
go test ./...                           # Unit tests (816+)
go test -tags=integration -v ./pkg/adt/ # Integration tests (requires SAP)
make build-all                          # Cross-compile 9 platforms
```

## Configuration (Priority: CLI > Env > .env > Defaults)

```bash
./vsp --url http://host:50000 --user admin --password secret
SAP_URL=http://host:50000 SAP_USER=user SAP_PASSWORD=pass ./vsp
./vsp --url http://host:50000 --cookie-file cookies.txt
```

Key flags: `--mode focused|expert|hyperfocused`, `--read-only`, `--allowed-packages "Z*"`, `--disabled-groups 5THD`

---

## Codebase Structure

```
cmd/vsp/              Entry point + CLI commands (28 commands)
internal/mcp/         MCP server, tool handlers, registration
  handlers_*.go       Domain-specific handlers (read, edit, debug, graph, etc.)
  tools_register.go   Tool registration + mode logic
  tools_focused.go    Focused mode whitelist
  handlers_universal.go  Hyperfocused single-tool mode (SAP tool)
pkg/
  adt/                ADT client (HTTP, CSRF, sessions, all SAP operations)
  graph/              Dependency graph engine (NEW — boundary analysis, parser extraction)
  ctxcomp/            Context compression (dependency resolution for read)
  abaplint/           Native ABAP lexer + parser (91 statement types, 8 lint rules)
  dsl/                Fluent API, YAML workflows, batch import/export
  cache/              In-memory + SQLite caching
  scripting/          Lua scripting engine
  llvm2abap/          LLVM IR → ABAP compiler (research)
  wasmcomp/           WASM → ABAP compiler (research)
```

## Key Files for Common Tasks

| Task | Files |
|------|-------|
| Add MCP tool | `internal/mcp/tools_register.go` + `handlers_*.go` |
| Add ADT operation | `pkg/adt/client.go`, `crud.go`, `devtools.go`, `codeintel.go` |
| Add graph feature | `pkg/graph/` |
| Add lint rule | `pkg/abaplint/rules.go` |
| Add integration test | `pkg/adt/integration_test.go` |

---

## Code Patterns

### Adding a New MCP Tool

1. Add handler in `internal/mcp/handlers_*.go`:
```go
func (s *Server) handleNewTool(ctx context.Context, request mcp.CallToolRequest) (*mcp.CallToolResult, error) {
    name, _ := request.GetArguments()["name"].(string)
    result, err := s.adtClient.NewMethod(ctx, name)
    if err != nil {
        return newToolResultError(fmt.Sprintf("Failed: %v", err)), nil
    }
    return mcp.NewToolResultText(formatResult(result)), nil
}
```

2. Register in `tools_register.go`:
```go
if shouldRegister("NewTool") {
    s.mcpServer.AddTool(mcp.NewTool("NewTool",
        mcp.WithDescription("..."),
        mcp.WithString("name", mcp.Required(), mcp.Description("...")),
    ), s.handleNewTool)
}
```

3. Add to universal route in `handlers_analysis.go` (or appropriate router)
4. Add to `tools_focused.go` if it should be in focused mode

### ADT Client Pattern

```go
func (c *Client) GetSomething(ctx context.Context, name string) (*Result, error) {
    resp, err := c.transport.Request(ctx, fmt.Sprintf("/sap/bc/adt/path/%s", name), nil)
    if err != nil { return nil, err }
    return parseResult(resp.Body)
}
```

---

## Common Issues

1. **CSRF token errors** — auto-refreshed in `http.go`, check transport
2. **Lock conflicts** — objects must be unlocked; edit handler does auto lock/unlock
3. **Session issues** — CRUD needs stateful sessions
4. **Auth conflicts** — use basic OR cookies, not both
5. **ZADT_VSP required** — WebSocket debug/RFC/RunReport need ZADT_VSP installed on SAP

## Security

- Never commit `.env`, `cookies.txt`, `.mcp.json`, `codex.toml` (all in `.gitignore`)
- Always verify no credentials in commits before pushing

---

## Conventions

### Reports
Format: `reports/YYYY-MM-DD-NNN-title.md` — sequential per day.

### SAP Object Naming
- Packages: `$ZADT`, `$ZADT_00`, `$ZADT_01`
- Programs: `ZADT_<nn>_<name>`, Classes: `ZCL_ADT_<name>`

---

## Feature Status

### Core Platform
| Feature | Status |
|---------|--------|
| MCP Tools | 100 focused / 147 expert |
| Tests | 816+ unit, 34 integration |
| Safety System | ✅ Operation filtering, package restrictions |
| Feature Detection | ✅ Auto-probe for abapGit, RAP, AMDP, UI5, Transport |
| Code Analysis | ✅ Call graph, structure, refs, context depth |
| Diagnostics | ✅ Dumps (RABAX), profiler (ATRA), SQL trace (ST05) |
| RAP OData E2E | ✅ DDLS, SRVD, SRVB create + publish |
| abapGit | ✅ WebSocket export, 158 object types |
| Install Tools | ✅ ZADT_VSP, abapGit bootstrap |
| DSL & Workflows | ✅ Fluent API, YAML, batch import/export, pipelines |
| CLI Toolchain | ✅ 28 commands (some compile paths experimental) |
| Native ABAP Parser | ✅ Lexer + 91 statements + 8 lint rules |
| Cache | ✅ In-memory + SQLite |

### In Progress
| Feature | Status |
|---------|--------|
| Graph Engine | ⚠️ Initial (boundary analysis, dynamic call detection) |
| External Debugger | ⚠️ WebSocket only (HTTP unreliable) |
| AMDP Debugger | ⚠️ Experimental |
| UI5/BSP | ⚠️ Read-only |

### Research & Experiments
| Feature | Status |
|---------|--------|
| LLVM IR→ABAP | ⚠️ Advanced prototype (34+28 functions, SAP verified) |
| WASM→ABAP | ⚠️ Proven (12K methods, QuickJS compiles on SAP) |
| TS→ABAP Pipeline | ⚠️ Demonstrated (Porffor chain) |
| TS→Go Transpiler | ⚠️ Experimental (3 files compile) |
