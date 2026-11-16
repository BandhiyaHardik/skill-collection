---
name: brainstorming
description: "Explore a substantial or ambiguous product or software design and turn it into a shared buildable design."
---

# Brainstorming

Start by reading the request and the smallest relevant slice of the project. Distinguish the known problem, audience, constraints, and outcome from the choices that still matter. Make useful progress using the evidence already available.

1. State your working understanding and identify the unresolved decision. Ask one focused question at a time when the answer materially changes the design. Give a defensible default where one exists.
2. Compare two or three plausible approaches when there is a consequential tradeoff. Cover behavior, scope, dependencies, known risks, and how to tell if it works. Recommend one for this request and explain why.
3. Play back a concrete design. Include key components or user flows, failure behavior, validation, and the boundary of this change. Size the deliverable so independent pieces can be planned separately.
4. If the user wants a written design, follow the repository's established location and format. Have a reviewer check for ambiguity or missing behavior when the design warrants it. The [builder check prompt](builder-check-prompt.md) supplies review questions. Then hand a multi-step implementation to [$writing-plans](../writing-plans/SKILL.md) when needed.

For a visual decision, use the available Codex preview or visualization capability. The optional [visual companion](visual-companion.md) includes a local web preview requiring Node.js and Bash. Open previews within the requested scope. Keep feedback about the design separate from authorization to publish or deploy it.
