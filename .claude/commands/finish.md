---
name: finish
description: "Finish: critical analysis, double audit, documentation update, save and commit"
---

# Finish Workflow

You are executing the `/finish` command — a shortcut for finalizing a work session or feature.

**PRE-FLIGHT — Orphan pipeline scan (run BEFORE invoking orchestrate):**
1. Call `list_active_pipelines()`
2. For each active pipeline matching the current project:
   - If stale (`stale: true`, >24h) OR all related work is committed in git → call `cancel_pipeline(id, "Closed by /finish — work committed")`
   - If real pending work remains (not yet committed) → warn the user before proceeding
3. Only after orphans are resolved — continue to orchestrate below.

**Immediately invoke the `orchestrate` skill** using the Skill tool with:
- skill: `orchestrate`
- args: `custom "Critical analysis + double audit, recursive until zero MEDIUM+ findings: (1) critical analysis of all current changes; (2) double audit — run lead-auditor then specialist-auditor, each with CV-GATE using mcp__pal__thinkdeep and mcp__pal__consensus (direct PAL MCP tool calls — if PAL MCP unavailable, perform internal cross-model review using Agent tool with a different model tier (opus if current is sonnet; sonnet if current is opus) and document fallback model used); (3) fix ALL MEDIUM+ findings found by either auditor; (4) repeat steps 2-3 until zero CRITICAL, HIGH, and MEDIUM findings remain; (5) update all documentation (ROADMAP.md, ANALYSIS.md, AGENTS.md, MEMORY.md, STATS.md if applicable); (6) save all artifacts; (7) commit with mcp__pal__precommit gate."`

Do not describe what you are about to do — invoke the skill immediately.
