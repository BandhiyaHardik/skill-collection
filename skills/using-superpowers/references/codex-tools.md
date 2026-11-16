# Codex Tool Notes

Use collaboration and worktree tools exposed by the current session. Tool schemas are the source of truth. Do not ask the user to change global configuration simply to follow a workflow that can run serially.

For delegation, give each agent the smallest relevant context, the working folder, and a clear boundary. Choose a model only when required by the user or environment. Work on independent items while agents run. If waiting is useful, use the collaboration wait tool with a bounded duration. Read and verify agent results before integrating changes.

For Git isolation, first inspect the repository root, worktree list, branch and working tree status. Reuse an appropriate managed worktree or use the available Codex worktree controls. Use Git with explicit paths when the managed route does not apply. For integration, follow the chosen branch and destination and verify the result.
