---
name: phase
description: "Phase planning: critical analysis, double audit, phase breakdown with task decomposition, plan persistence, documentation update, commit"
---

# Phase Planning Workflow

You are executing the `/phase` command — a shortcut for structured phase planning.

**Immediately invoke the `orchestrate` skill** using the Skill tool with:
- skill: `orchestrate`
- args: `custom "Critical analysis + double audit, recursive until zero MEDIUM+ findings: (1) critical analysis of current state; (2) double audit — run lead-auditor then specialist-auditor, each with CV-GATE using mcp__pal__thinkdeep and mcp__pal__consensus (direct PAL MCP tool calls — if PAL MCP unavailable, perform internal cross-model review using Agent tool with a different model tier (opus if current is sonnet; sonnet if current is opus) and document fallback model used); (3) fix ALL MEDIUM+ findings found by either auditor; (4) repeat steps 2-3 until zero CRITICAL, HIGH, and MEDIUM findings remain; (5) phase decomposition: break work into phases with concrete tasks per P41-P44 planning rules; (6) persist plan to docs/PLAN.md and docs/TASKS.md — each phase MUST end with a mandatory GATE step: '- [ ] GATE: run tests + mcp__pal__codereview + mcp__pal__thinkdeep (if PAL unavailable: Agent tool with different model tier) — zero CRITICAL before next phase'; (6b) add '## Next Plans' section at the end of docs/PLAN.md — read docs/ROADMAP.md to identify the next 1–4 phases after the current plan, list each with Phase ID, title, status emoji (✅/🚧/⏸/📋), and one-line goal; if next phases are unknown, write 'TBD — run /phase after this plan completes'; (7) save all artifacts; (8) update all documentation (ROADMAP.md, ANALYSIS.md, AGENTS.md, MEMORY.md); (9) commit with mcp__pal__precommit gate."`

Do not describe what you are about to do — invoke the skill immediately.
