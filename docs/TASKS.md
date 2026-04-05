# Tasks: Upstream Merge & Fork Modernization

**Pipeline:** migration-3032514f
**Created:** 2026-04-05
**Dev-lead assessment:** Tasks validated, rollback points identified

---

## Execution Order & Dependencies

```
Phase 1.1 (merge) ──→ Phase 1.2 (re-add code) ──→ Phase 1.3 (branch cleanup)
                                                        │
                                                        ├──→ Phase 1.4 (AnalyzeABAPCode v2) ─┐
                                                        │                                     ├──→ Phase 1.6 (docs)
                                                        └──→ Phase 1.5 (Refactoring v2) ──────┘
```

Phases 1.4 and 1.5 are **independent** — can run in parallel after 1.3.

---

## Phase 1.1: Upstream Merge

| Task | Description | Rollback |
|------|-------------|----------|
| T1.1 | `git fetch upstream` | N/A |
| T1.2 | `git checkout -b migration/upstream-merge-v0.47` | `git branch -D migration/...` |
| T1.3 | `git merge upstream/main` — resolve conflicts | `git merge --abort` |
| T1.4 | Fix compilation errors | `git checkout -- <file>` per file |
| T1.5 | Fix test failures | Same |
| T1.6 | Commit merge | `git reset --soft HEAD~1` |
| **GATE** | `go build` + `go test ./...` pass | Abort branch, return to main |

**Conflict prediction (170 divergent files):**
- `go.mod` / `go.sum` — accept upstream (mcp-go v0.47)
- `internal/mcp/tools_register.go` — accept upstream, lose fork calls (re-added in 1.2)
- `internal/mcp/server.go` — accept upstream (SSE transport)
- `.claude/` — keep ours (upstream deleted)
- `CLAUDE.md` — keep ours (more complete)
- `pkg/adt/*.go` deleted files — accept deletion (re-added in 1.2)

## Phase 1.2: Re-add Valuable Fork Code

| Task | Description | Files | Rollback |
|------|-------------|-------|----------|
| T2.1 | Re-add impact analysis | `pkg/adt/impact.go`, `impact_test.go` | `git checkout HEAD~1 -- pkg/adt/impact*` |
| T2.2 | Re-add regression detection | `pkg/adt/regression.go`, `regression_test.go` | Same pattern |
| T2.3 | Re-add SQL perf analysis | `pkg/adt/sqlperf.go`, `sqlperf_test.go` | Same |
| T2.4 | Re-add DDIC tests | `pkg/adt/ddic_test.go` | Same |
| T2.5 | Re-add intelligence handlers | `internal/mcp/handlers_intelligence.go` | Same |
| T2.6 | Create fork tool registration | `internal/mcp/tools_register_fork.go` | `git rm` |
| T2.7 | Add hook to tools_register.go | ONE line: `s.registerForkTools(shouldRegister)` | Revert line |
| T2.8 | Re-add codeanalysis handler (stub) | `internal/mcp/handlers_codeanalysis.go` | Same |
| T2.9 | Re-add `.claude/` config | Directory restore | Same |
| T2.10 | Verify build + tests | — | — |
| **GATE** | Build + tests pass, tools register | — | — |

**Critical path:** T2.1-T2.5 may need Client API adjustments (mcp-go v0.47 changed signatures). T2.6-T2.7 are the extension hook — must work before other tasks can register.

## Phase 1.3: Branch Cleanup

| Task | Description | Rollback |
|------|-------------|----------|
| T3.1 | Delete 8 local branches | `git reflog` to recover |
| T3.2 | Delete 7 remote branches on myfork | Cannot undo — but all code is on main |
| T3.3 | Merge migration branch to main | `git reset --hard HEAD~1` on main |
| **GATE** | Clean branch state | — |

**Branches to delete (local + myfork remote):**
- `feat/http-sse-transport` — upstream has mcp-go v0.47 SSE
- `feat/atc-transport-timeout` — upstream has RunATCCheckTransport
- `feat/intelligence-layer` — merged to main already
- `feat/adt-refactoring` — wrong API URLs
- `feat/cds-tools` — upstream accepted PR #85
- `feat/testing-quality` — upstream accepted PR #84
- `feat/version-history` — upstream accepted PR #83
- `local-changes-backup-2026-02-18` — old backup

## Phase 1.4: AnalyzeABAPCode v2 (abaplint-based)

| Task | Description | Priority |
|------|-------------|----------|
| T4.1 | Fix ColonMissingSpaceRule Row:0 bug | P0 — blocks all rule output |
| T4.2 | Add 5 new abaplint rules (security/performance) | P1 |
| T4.3 | Rewrite codeanalysis.go to use abaplint | P1 |
| T4.4 | Update handlers_codeanalysis.go | P1 |
| T4.5 | Write unit tests for new rules | P1 |
| T4.6 | Verify all tests pass | P0 |
| **GATE** | Tests pass, rules produce correct findings | — |

**New rules to add to pkg/abaplint:**
1. `hardcoded_credentials` — detect password/secret in string literals
2. `select_star` — detect SELECT * FROM
3. `catch_cx_root` — overly broad exception handling
4. `commit_in_loop` — COMMIT WORK inside LOOP/DO/WHILE
5. `dynamic_call` — CALL METHOD/FUNCTION with variable

## Phase 1.5: Refactoring & QuickFix v2

| Task | Description | Priority |
|------|-------------|----------|
| T5.1 | Research correct APIs from abap-adt-api | P0 — must precede implementation |
| T5.2 | Implement refactoring_v2.go | P1 |
| T5.3 | Implement quickfix_v2.go | P1 |
| T5.4 | Feature detection for API availability | P1 |
| T5.5 | Update handlers_refactoring.go | P1 |
| T5.6 | Unit tests with mock HTTP | P1 |
| T5.7 | Integration test (manual, needs SAP) | P2 — post-merge |
| **GATE** | Unit tests pass, API URLs verified | — |

## Phase 1.6: Documentation & Verification

| Task | Description |
|------|-------------|
| T6.1 | Update README.md tool tables |
| T6.2 | Update CLAUDE.md tool counts |
| T6.3 | Write migration report |
| T6.4 | Full test suite |
| T6.5 | Build all platforms |
| **GATE** | Build + tests pass, docs accurate |

---

## Risk Mitigations

| Risk | Mitigation | Rollback |
|------|-----------|----------|
| mcp-go v0.47 breaks build | Phase 1.1 isolated on branch | `git merge --abort` or delete branch |
| Re-added code has API drift | Fix in T2.1-T2.5 before commit | Revert individual files |
| Branch deletion loses work | All work is on main or upstream | `git reflog` |
| New abaplint rules incorrect | Oracle tests verify accuracy | Revert rule file |
