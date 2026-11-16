---
name: executing-plans
description: "Execute an existing implementation plan in the current session and verify each meaningful checkpoint."
---

# Executing Plans

Read the whole plan, repository instructions, and the current working tree before beginning. Check the inputs, dependencies, acceptance criteria, and permission boundaries. Resolve contradictions that affect the next step and continue with independent work while a material question is pending.

- Work through the planned tasks in dependency order. Record the starting revision or diff state so unrelated changes remain attributable to their owners.
- Run each task's targeted checks and record what passed, failed, or was unavailable. A checkbox represents observed completion. Use [$systematic-debugging](../systematic-debugging/SKILL.md) when behavior differs from the plan.
- Respect the user's existing scope for branches, checkpoints, commits, and external changes. Where the plan needs adjustment, make small, reversible corrections within scope and record significant deviations.
- At the end, inspect the full diff from the recorded base and verify the integrated behavior. Use [$verification-before-completion](../verification-before-completion/SKILL.md), then [$finishing-a-development-branch](../finishing-a-development-branch/SKILL.md) if branch integration is requested.

For a plan already written to the Superpowers ledger format, [task-start](scripts/task-start) and [task-done](scripts/task-done) support its task bookkeeping through Bash. Resolve the scripts from the skill directory, inspect their inputs, and use them only for that ledger. When Bash or the ledger is unavailable, record progress with the plan's own checklist and actual checks.
