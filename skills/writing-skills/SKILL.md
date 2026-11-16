---
name: writing-skills
description: "Use Superpowers techniques to author and evaluate an Agent Skill through realistic test scenarios."
---

# Writing Skills

Use the built-in `$skill-creator` workflow for Codex skills. This skill adds a test-first technique for behaviors that are easy to misunderstand or that have important failure modes.

1. Define the behavior and triggering requests. Create a small realistic example, a near miss that should route elsewhere, and any edge case that makes the intent ambiguous.
2. Compare baseline behavior with behavior after reading the draft. Keep the setup and evidence comparable. Use an independent agent when available and helpful. [Behavioral testing examples](references/testing-skills-with-subagents.md) show how to record the task and judge the result.
3. Write the smallest instructions that materially improve the decision. Put specialized details into linked resources, include only needed tools or assets, use the current host's skill and tool names, and respect user and workspace authority.
4. Re-run the useful scenarios, inspect the actual outputs, and validate the entrypoint and supporting links. Use [discovery guidance](references/discovery.md) to refine routing and [flowchart guidance](references/flowcharts.md) when a conditional workflow needs a diagram. Revise based on observed failures rather than adding unnecessary requirements.

For personal Codex skills, use the location configured by the current Codex host (commonly `$CODEX_HOME/skills/<skill-name>/SKILL.md`). For repository-specific skills, use `.agents/skills/<skill-name>/SKILL.md`. Follow the user's requested location and installation scope.
