---
name: dispatching-parallel-agents
description: "Delegate two or more genuinely independent investigations or changes using Codex collaboration."
---

# Dispatching Parallel Agents

Separate the problem by file ownership, independent failing behavior, or deliverable. For a single root cause or dependent changes, investigate in sequence. Before allowing parallel edits, identify shared files, state, ports, and build outputs. Use read-only investigations or isolated working copies when ownership overlaps.

Give each agent one clearly bounded task. Include evidence, workspace, relevant constraints, file ownership, expected deliverable, required checks, and the places it may not edit. Use the available Codex collaboration tools and the current schema. Delegate when the session allows it and it helps the user. Continue useful local work while agents work. If agents are unavailable or time out, complete the unfinished work serially.

Inspect returned findings and diffs independently. Integrate compatible changes, reconcile conflicts based on the actual code, and run the combined checks that cover the user-visible result. For a whole plan with task implementation and review cycles, use [$subagent-driven-development](../subagent-driven-development/SKILL.md).
