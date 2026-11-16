---
name: subagent-driven-development
description: "Execute a multi-task implementation plan with delegated work, review, and final integration checks."
---

# Subagent-Driven Development

Use this workflow when an implementation plan has clear task boundaries and Codex collaboration tools are available. For independent parallel investigations, use [$dispatching-parallel-agents](../dispatching-parallel-agents/SKILL.md). If delegation is unavailable, use [$executing-plans](../executing-plans/SKILL.md) and carry out the same checks yourself.

1. Read the full plan and inspect the workspace. Record the starting base for the final review. Assign agents disjoint files or separate working copies. Sequence tasks that depend on one another or change shared files. Use the existing worktree where appropriate.
2. Give each implementer the task, exact scope, relevant project instructions, workspace, acceptance criteria, and verification requirements. Adapt the [implementer prompt](implementer-prompt.md) to the actual tools. Reuse a child for fixes when supported.
3. Read each report and diff. Review the acceptance criteria and then the code quality independently. Use the [review prompt](task-reviewer-prompt.md) and [re-review prompt](re-review-prompt.md) as templates. Send only the data required for the review. Verify the actual changes and resolve material findings before marking the task complete.
4. Review the integrated diff from the recorded base and run the project checks that cover interactions between tasks. Report unverified work explicitly. Follow the user’s instructions about committing, opening a PR, or removing a worktree.

Use [preflight](references/preflight.md), [resuming](references/resuming.md), and [final review](references/final-review.md) for larger plans. The bundled Bash [ledger and review helpers](scripts/) are optional. They are intended for the Superpowers plan format and require Bash and Git. Use the current tool schemas for delegation and stop retrying an unavailable tool when a serial workflow can complete the task.
