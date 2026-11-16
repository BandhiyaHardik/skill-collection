---
name: requesting-code-review
description: "Request an independent review of a code change or prepare a review package for a specified revision."
---

# Requesting Code Review

Capture the scoped diff, from the known base to the candidate revision. When reviewing uncommitted changes, give a reliable diff reference and include staged, unstaged, or untracked files as appropriate. State intended behavior, acceptance criteria, relevant project rules, and tests run.

Adapt the bundled [reviewer prompt](code-reviewer.md). Use a Codex review or collaboration tool if available. Ask the reviewer to stay read-only and report actionable findings with severity, file/line references, the conditions that trigger the failure, and why the behavior matters.

Verify findings against the code, then address and recheck material ones that are within scope. For a review-only request, provide the findings as review comments and keep the workspace untouched. If independent review is unavailable, inspect the diff yourself and label the review accurately.
