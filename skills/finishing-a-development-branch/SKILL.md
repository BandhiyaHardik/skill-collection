---
name: finishing-a-development-branch
description: "Verify a finished development branch and carry out the requested integration or handoff."
---

# Finishing a Development Branch

Identify the current branch or exact detached revision, base branch, working tree state, and whether the worktree is managed by Codex. Verify the diff against that base and run the required checks. If a failure prevents the requested integration, fix it within scope or report the concrete blocker.

Follow the user's chosen destination. When the choice remains open, present the relevant options with the actual branch, check results, and any status that affects the decision.

- For an authorized local merge, ensure the intended destination is clean, merge using the repository's normal strategy, and verify the integrated result.
- For a pull request, push and create or update the requested PR via the supported route. Include the reviewable change, verification, and any known limitation. Record the returned URL and attach it in Codex where available.
- For a handoff, keep the work in a usable state and report its exact branch or revision, checks, and remaining work.
- Remove a worktree or discard changes only when authorized and after checking outstanding untracked files, commits, and staged changes. Use Codex's managed worktree tools for a worktree created by Codex. Verify the merge or recovery reference before cleaning up.

Respect the repository's branch and release rules. Request only a missing decision that affects the authorized integration.
