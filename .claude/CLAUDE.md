<!-- DO NOT EDIT -- managed by sync.ps1 from claude-team-control -->
<!-- Synced: 2026-03-19 03:01:02 -->
<!-- Base: base/CLAUDE.md | Overlay: overlays/vibing-steampunk.md -->


## Requirements

- When uncertain about any fact, API, or behavior: state "I don't know" explicitly. Never guess, hallucinate, or fabricate information.

## Language & Terminology

- When writing any code artifact (code, comments, docstrings, variable names, README, commit messages, diagrams): write in English.
- When encountering an English technical term with no established Russian equivalent: use the original Latin-script term (git stash, merge, rebase, commit, pull request). Never transliterate into Cyrillic.
- When responding to the user: match the language the user writes in.

## Research & Verification

### Tool-First Analysis (MANDATORY)

Before forming any conclusion about code, architecture, or technical decisions: make at least one tool call (Read, Grep, Glob, context7, WebSearch, WebFetch, MCP, or Task agent). Never reason from memory alone.

- Before implementing a solution or suggesting an approach: query official documentation via context7, WebSearch, or WebFetch to verify assumptions.
- Before choosing an API, library, or pattern: look up its actual behavior. Never assume.
- When in plan mode: actively explore the codebase (read files, search patterns, check dependencies). Plans without tool-grounded analysis are invalid.
- When analysis requires multi-file exploration or heavy research: delegate to a Task agent (Explore, Plan, general-purpose) to offload token cost from the main context.

### PAL MCP Tools (MANDATORY)

**PAL = the PAL MCP server tools (`mcp__pal__*`). Always call them directly in the main session via the MCP tool interface. Never substitute with orchestrator CV-gate calls, internal reasoning, or any other mechanism — PAL MCP is the only valid fulfillment. When PAL MCP is unavailable: do NOT skip cross-validation. Instead, perform internal cross-model review — launch a sub-agent via the Agent tool with a different model tier (opus if current session is sonnet; sonnet if current session is opus) with the same analysis prompt. Document which fallback model was used. Internal cross-model review is a valid substitute for PAL cross-validation only when PAL MCP is confirmed unavailable.**

Before concluding on architecture, bugs, or security: call the appropriate PAL MCP tool. Never keep complex reasoning purely internal.

| Trigger | Call |
|---------|------|
| Before concluding on a non-trivial problem (architecture, complex bug, performance, security) | `mcp__pal__thinkdeep` |
| Before presenting an implementation plan to the user | `mcp__pal__planner` |
| Before making a decision with significant long-term impact (technology choice, architecture trade-off) | `mcp__pal__consensus` |
| After writing or modifying non-trivial code | `mcp__pal__codereview` |
| Before committing changes (enforced by hook) | `mcp__pal__precommit` |
| When questioning a previous conclusion or disagreeing with a finding | `mcp__pal__challenge` |
| When brainstorming or seeking a second opinion | `mcp__pal__chat` |
| When debugging a complex bug or investigating a multi-component issue | `mcp__pal__debug` |

## Project Structure

File placement rules and directory conventions: see `docs/PROJECT-STRUCTURE.md` in the claude-team-control repo.

**Quick reference — prohibited (never do these):**
- Do NOT create files in `base/` other than `CLAUDE.md`
- Do NOT put agent/skill files outside their designated directories (`agents/`, `skills/`)
- Do NOT add Python packages to orchestrator without updating `pyproject.toml`
- Do NOT edit `projects.local.json` in commits -- it is user-specific and gitignored
- Do NOT store secrets, credentials, or API keys anywhere in this repo
- Do NOT edit `.claude/CLAUDE.md` directly -- overwritten by sync

**Naming conventions:** directories + non-Python files: `kebab-case`; Python modules: `snake_case`; exceptions: `CLAUDE.md`, `README.md`, `ROADMAP.md`, `ANALYSIS.md`.

## Agent & Tool Usage

- When a task requires information from an MCP server: call it. Never skip available MCP tools when they are relevant.
- When a task is complex (multi-file, multi-domain, deep analysis): delegate to a specialized agent via Task tool (Explore, Plan, Bash, general-purpose).
- When a repetitive task pattern emerges: create a new agent definition, document it in `docs/AGENTS.md`, and update these instructions.
- When multiple independent tool calls are needed: batch them in a single message. Never make sequential calls where parallel is possible.

## Automatic Task Routing (MANDATORY)

Before starting ANY implementation: assess the task scope and route it. Never ask the user "should I use an agent?" -- decide and proceed.

| Signal | Threshold | Route to |
|--------|-----------|----------|
| Files affected | >3 files | Pipeline or agents |
| Architecture change | Any (new component, API, data model) | `architect` agent, then pipeline |
| Security surface | Auth, input validation, crypto, secrets | `security-lead` agent |
| Bug complexity | Multi-component, race condition, data corruption | `/orchestrate bugfix` pipeline |
| New feature | Any user-facing feature | `/orchestrate feature` pipeline |
| Code review request | Any PR or diff review | `code-reviewer` agent (triggers L1 CV) |
| Audit request | Plan review, risk assessment | `lead-auditor` agent (triggers L1 CV) |
| Deployment | Any release, deploy, migration | `/orchestrate deploy` pipeline |

**Routing decision:**
- Question / reading only → answer directly
- Single file, cosmetic fix → implement directly
- Single file, logic/security change → use relevant agent (code-reviewer, security-lead, architect)
- Multiple files, one concern → use relevant agent(s)
- Multiple files, multiple concerns → `/orchestrate` pipeline

**Rules:** When in doubt: use agents. Announce route in one line before starting. Before any non-trivial implementation: call `mcp__orchestrator__route_task(description)` and follow its decision.

Full routing details (MCP orchestrator integration, CV gates, pipeline execution): see `/routing-rules` skill.

## Permissions

- When reading log/output files (`.output`, `*.log`, `*.txt` in temp dirs, server stdout/stderr, test runner output): read without asking for confirmation.
- When reading project source files (any file within the project directory or related project directories): read without asking for confirmation.
- When reading configuration files (`.env`, `*.json`, `*.toml`, `*.yaml`, `*.cfg` in project directories): read without asking for confirmation.

## Git & GitLab

- After creating a git commit: remind the user to push to GitLab (or offer to push). Never let commits accumulate locally.
- At the start of a session: run `git status` and `git log origin/main..HEAD`. When unpushed commits exist: notify the user immediately.
- When pushing: use `git push origin main` (or the current branch name). Never force-push without explicit user approval.

## Database Protection (CRITICAL -- NEVER VIOLATE)

Enforced automatically by `protect-db.sh` hook -- blocks destructive commands on DB paths.

- When encountering any database file or directory (`*.db`, `*.sqlite`, `*.sqlite3`, `*chroma*`, `chroma_db/`, `pgdata`, `*redis*data`, `*mongo*data`, `*elastic*data`, `*mysql*data`, `*_db/`): NEVER delete it. Zero exceptions.
- Before any destructive operation on a DB path: create a backup first:
  1. `cp -r <db_dir> _archive/<db>_backup_$(date +%Y-%m-%d)/`
  2. Verify: `ls -la _archive/<db>_backup_*/`
  3. Only then proceed.
- Allowed operations: backup, copy, archive, read. Forbidden: `rm -rf`, `rmdir`, `shutil.rmtree()`, `DROP TABLE/DATABASE`, `docker volume rm`.
- When adding a new database to a project: add its path pattern to `hooks/protect-db.sh` `DB_PATTERN` and run `/sync`.

## Session Start Protocol

At the start of each session, execute these steps in order:
1. Read `docs/PLAN.md` -- check for in-progress plans.
2. Read `docs/ROADMAP.md` -- check current phase status.
3. Call `list_active_pipelines()` -- check for interrupted pipelines.
4. Check the `[SYNC CHECK]` line from the SessionStart hook output:
   - Out of sync: report the stale files to the user and ask if they want to run `/sync`.
   - In sync: confirm to the user ("rules are up to date").
   - No `[SYNC CHECK]` line (unmanaged project): skip silently.
5. When active pipelines exist: report them to the user with resume instructions before accepting new tasks.
5b. For each active pipeline reported: check git log -- if all pipeline work is committed, call `cancel_pipeline(id, reason)` to close it. Do not leave orphans.
6. When other pending work exists: report it before accepting new tasks.

## Per-Phase Gate (MANDATORY)

Before starting any new implementation phase from `docs/PLAN.md`:
1. Run automated tests (`npm test`, `pytest`, etc.) — must pass with zero failures.
2. Call `mcp__pal__codereview` on all files changed in the previous phase. Any CRITICAL → HALT, fix, re-review.
3. Call `mcp__pal__thinkdeep` on the previous phase's changes. Any CRITICAL → HALT.
4. If PAL MCP is unavailable: perform steps 2-3 using internal cross-model review (Agent tool, different model tier). Document which fallback model was used.
5. Only after all three pass: mark the previous phase complete in `docs/PLAN.md` (`[x]`) and proceed to the next.

Never skip this gate. Never proceed to the next phase while the previous phase has unresolved CRITICAL findings.
Note: gate checks CRITICAL-only (lightweight checkpoint). Full zero-MEDIUM+ standard is enforced by the end-of-plan double audit.

## Context & Token Optimization (MANDATORY)

- Before moving to a different feature, phase, or task domain: commit all current work and update `docs/`. Never carry stale context.
- When research or exploration exceeds 3 file reads: delegate to a Task agent. Never run heavy scanning in the main context.
- Before reading a file: check if it was already read in this conversation and not modified since. Never re-read unchanged files.
- When multiple independent tool calls are needed: batch them in one message.
- When responding: use minimum words needed. No filler phrases, no restating the question.
- When tracking multi-step progress: use TodoWrite. Never write status paragraphs in chat.
- When a subagent returns results: extract only relevant findings. Never paste full tool outputs verbatim.
- Before context compresses or session ends: persist all state to files (`docs/PLAN.md`, `docs/ROADMAP.md`, pipeline state via `complete_step`, MEMORY.md).

**Glob safety:** NEVER use `**/*.md` or any `**/*` pattern on project roots. Use `*.md` (root only), `docs/*.md` (specific subdir), `find -maxdepth 2`, or delegate to a Task agent.

## Plan & Documentation Gate (MANDATORY before commit)

Before committing: update all documentation:
- `docs/ROADMAP.md` -- mark completed phases, record commit context, update status tables.
- `docs/ANALYSIS.md` -- reflect architectural changes, new patterns, updated regex catalogs.
- `docs/AGENTS.md` -- if agents were created or modified.
- `MEMORY.md` -- update project state (current phase, test counts, key lessons).

Plan persistence rules (artifact index, ADR format, spike format, clean context gate): see `/planning-rules` skill.

Documentation quality standards (Mermaid, tables, collapsibles, emoji markers, code block tags): see `/docs-rules` skill.

Cost-aware development (scripts-over-agents table, CV gate applicability, agent memory protocol, collaboration handoff): see `/agent-memory-rules` skill.

## Independent Audit (MANDATORY)

After creating any implementation plan OR implementing changes touching >3 files: conduct a structured audit before proceeding.

Full audit workflow, verification evidence format, depth checklist, Rules Architect agent: see `/planning-rules` skill.

**Minimum requirement when `/planning-rules` is not loaded:**
- After plan design: launch `lead-auditor` agent before implementation begins.
- Every APPROVE verdict must include Verification Evidence (files read, PAL tools called, edge cases analyzed).
- Zero MEDIUM+ findings before proceeding (MEDIUM+ means CRITICAL, HIGH, or MEDIUM severity). Any CRITICAL, HIGH, or MEDIUM finding = HALT + fix + re-audit.
- Audit is recursive: re-run after every fix cycle until the audit returns zero CRITICAL, HIGH, and MEDIUM findings. Do not proceed while any MEDIUM+ finding is open.
- After the audit completes (APPROVE or final ESCALATE): output a **Session Summary** to the user with three parts:
  1. **What was done** — one-paragraph summary of changes made and findings resolved.
  2. **Findings table** — all findings across all audit cycles, with columns: `ID | Severity | Description | Status | Action taken`. Status values: `Fixed`, `Deferred`, `Open`.
  3. **Manual review table** — separate table listing items the user must verify manually: `Item | Why manual | Risk if skipped`. Include: all Deferred and Open findings, external integrations not covered by automated tests, security controls requiring human sign-off. Exclude: Fixed findings.


<!-- === Project-specific overlay: vibing-steampunk.md === -->


## Go Development Patterns

- **Error handling**: Always check `err != nil` immediately after function calls
- **Naming**: Use Go conventions — `camelCase` for unexported, `PascalCase` for exported
- **Testing**: `go test ./...` for all tests, `go test -v -run TestName` for specific
- **Dependencies**: Use `go mod tidy` after adding/removing imports

## SAP ABAP Conventions

- **Z/Y naming**: All custom objects MUST use Z_ or Y_ prefix (SAP namespace rules)
- **Transport management**: Every change requires a transport request. Use `/transport-deploy` skill for transport workflows
- **ABAP naming**: Class names uppercase, methods camelCase, variables with type prefix (lv_, lt_, lo_, etc.)
- **Unit tests**: Use ABAP Unit framework. Run via `RunUnitTests` MCP tool after every change
- **ATC checks**: Run `RunATCCheck` before transport release to catch quality issues

## VSP MCP Integration

- Use `vsp-sc3` MCP server for all SAP object operations
- Key tools: `SearchObject`, `GetSource`, `WriteSource`, `Activate`, `RunUnitTests`, `RunATCCheck`, `GetCallGraph`
- Use `pdap-docs` MCP for Process Director knowledge base (search_fixes, query_docs)

## Security Note

- SAP credentials MUST be stored in `.env` or credential manager, NEVER in committed files
- Do NOT hardcode passwords in `settings.local.json` — use environment variables

