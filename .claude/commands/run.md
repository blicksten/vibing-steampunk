---
name: run
description: "Execute: read current plan, run per-phase gate for completed phase, implement next phase(s), audit, update docs, commit. Usage: /run [N|all] — 1 phase (default), N phases, or all remaining."
---

# Run Workflow

You are executing the `/run` command — a shortcut for implementing one or more planned phases.

**Step 1 — Determine scope from ARGUMENTS (`$ARGUMENTS`):**
- Empty or `1` → run **1 phase** (default)
- Number `N` (e.g., `3`) → run **N consecutive phases**
- `all` → run **all remaining phases**

**Step 2 — Immediately invoke the `orchestrate` skill** using the Skill tool with:
- skill: `orchestrate`
- args: `custom "Execute phases from docs/PLAN.md. SCOPE: $ARGUMENTS (empty=1, number=N phases, 'all'=all remaining). LOOP INSTRUCTIONS: repeat the following per-phase cycle until scope is exhausted or no incomplete phases remain — (1) read docs/PLAN.md and docs/TASKS.md — identify (a) the last implemented-but-not-yet-gated phase, if any, and (b) the next incomplete phase to implement; if no incomplete phase exists, stop the loop immediately; (2) PER-PHASE GATE — if a prior implemented phase exists: run automated tests (must pass zero failures), call mcp__pal__codereview on all files changed in that phase (CRITICAL → HALT ENTIRE LOOP), call mcp__pal__thinkdeep (CRITICAL → HALT ENTIRE LOOP); if PAL MCP unavailable, perform these reviews using Agent tool with a different model tier (opus if current is sonnet; sonnet if current is opus) and document fallback model used; if this is the first iteration after /phase (no prior implemented phase) — skip the gate; (3) if gate fails — HALT the entire loop immediately, report which phase caused the failure and the findings, do NOT proceed to next phase; (4) only after gate passes (or first-iteration skip) — mark the GATE checkpoint of the previous phase as [x] in docs/PLAN.md; (5) route next phase via mcp__orchestrator__route_task and follow its decision; (6) implement all tasks in the next phase per the plan; (7) update docs/PLAN.md (mark implemented tasks done), docs/ROADMAP.md, and MEMORY.md with phase progress; (8) commit with mcp__pal__precommit gate; (9) output a per-phase summary — Phase completed: [phase number and name], Steps implemented: [bullet list of all tasks completed], Fixes/changes: [what was changed and why]; (10) LOOP CONTROL: if scope was a number N, decrement counter — if counter > 0 AND incomplete phases remain, continue to next iteration WITHOUT invoking /save; if scope was 'all', continue to next iteration WITHOUT invoking /save; if scope is exhausted OR no incomplete phases remain, exit the loop; END OF LOOP — output a final run summary: list ALL phases completed in this run with their step counts; then branch: if ALL phases in docs/PLAN.md are now complete — output 'All phases complete.' and list Next planned work from the '## Next Plans' section; do NOT invoke /save; if phases REMAIN — output remaining phase names and 'Next step: run /run again to continue.' (or /run N / /run all for bulk); invoke the /save skill to verify all state is persisted and prompt the user to run the built-in /clear command before the next /run."`

Do not describe what you are about to do — invoke the skill immediately.
