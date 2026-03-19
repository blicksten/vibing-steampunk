---
name: save
description: "Context cleanup: verify all state is persisted to files, then prompt user to run the built-in /clear command"
---

# Save Workflow

You are executing the `/save` skill — a context cleanup checkpoint between phases.

**Note on terminology:**
- `/save` — this skill (defined here, invokable via slash command)
- `/clear` — a **built-in Claude Code command** (Clear conversation) that actually clears the context. It cannot be called programmatically; the user must run it manually.

## Steps

1. Verify that all state is persisted to files:
   - `docs/PLAN.md` — previous phase GATE checkpoint marked `[x]`, current phase tasks marked as implemented
   - `docs/TASKS.md` — task breakdown current
   - `docs/ROADMAP.md` — phase progress updated
   - `MEMORY.md` — project state current
   - All changes committed (`git status` must be clean)

2. If anything is not persisted: save it now before clearing context.

3. Output this message to the user (same meaning; match the user's language; keep command tokens `/clear` verbatim):

---

**Context ready for cleanup.**

All state is persisted to `docs/PLAN.md`, `docs/TASKS.md`, `docs/ROADMAP.md`, and `MEMORY.md`. The next `/run` will read the plan from files and continue from where this phase left off.

> Run the built-in **`/clear`** command (Context → Clear conversation) to start the next phase in a clean context.

---
