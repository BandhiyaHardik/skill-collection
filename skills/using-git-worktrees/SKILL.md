---
name: using-git-worktrees
description: "Create or reuse an isolated Git working tree for development when the task calls for it."
---

# Using Git Worktrees

Inspect the current checkout with `git status --short`, `git worktree list --porcelain`, and `git rev-parse --show-toplevel --git-common-dir`. Determine the source revision and whether the current checkout is already isolated. Reuse a suitable existing isolation when it matches the requested working state.

Use Codex's managed worktree controls when available and appropriate. Otherwise create a Git worktree with an explicit absolute path and known branch or revision. Use the repository's worktree location convention. If creating inside the repository, verify Git ignores that path first. Never overwrite an existing path or silently omit the uncommitted changes the user wanted included. Use the configured branch naming convention, with `codex/` as the default.

In the worktree, follow repository setup instructions and run the initial checks relevant to the planned change. Record the path, starting revision, and any pre-existing failures. Keep untracked or ignored user data out of cleanup. Use [$finishing-a-development-branch](../finishing-a-development-branch/SKILL.md) when the user requests integration or removal.
