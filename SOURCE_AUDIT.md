# Source audit

Audited 17 November 2026 against the then-current default branches of the three upstream repositories. Git blob SHA-1 hashes were compared for every file under `skills/`. An identical hash means identical bytes; a different hash establishes a change but does not by itself establish how substantial that change is.

| Source | Skills | Bundled files | Identical files | Changed files |
| --- | ---: | ---: | ---: | ---: |
| [Marketing Skills](https://github.com/coreyhaines31/marketingskills) | 53 | 457 | 376 | 81 |
| [Superpowers](https://github.com/obra/superpowers) | 15 | 80 | 50 | 30 |
| [AI Engineering from Scratch](https://github.com/rohitg00/ai-engineering-from-scratch) | 18 | 74 | 50 | 24 |

**Total:** 86 skills and 611 bundled skill files: 476 identical and 135 changed. Every one of the 86 `SKILL.md` entrypoints differs from its current upstream counterpart. All 611 bundled skill files had a matching upstream path; none was unassigned. Three files exist upstream in the matched skill folders but are absent from this bundle. The comparison is against current upstream, so a difference may also reflect an upstream update after this collection was assembled.

## Skill families

### Marketing Skills (Corey Haines)

`ab-testing`, `ad-creative`, `ads`, `ai-seo`, `analytics`, `aso`, `attribution`, `churn-prevention`, `co-marketing`, `cold-email`, `community-marketing`, `competitor-profiling`, `competitors`, `content-strategy`, `conversion-tracking`, `copy-editing`, `copywriting`, `cro`, `customer-research`, `directory-submissions`, `emails`, `events`, `free-tools`, `image`, `influencer-marketing`, `launch`, `lead-magnets`, `link-building`, `marketing-council`, `marketing-ideas`, `marketing-loops`, `marketing-plan`, `marketing-psychology`, `offers`, `onboarding`, `paywalls`, `popups`, `pricing`, `product-marketing`, `programmatic-seo`, `prospecting`, `public-relations`, `referrals`, `reverse-engineer-marketing`, `revops`, `sales-enablement`, `schema`, `seo-audit`, `signup`, `site-architecture`, `sms`, `social`, `video`

### Superpowers (Jesse Vincent)

`brainstorming`, `diagnosing-superpowers`, `dispatching-parallel-agents`, `executing-plans`, `finishing-a-development-branch`, `receiving-code-review`, `requesting-code-review`, `subagent-driven-development`, `systematic-debugging`, `test-driven-development`, `using-git-worktrees`, `using-superpowers`, `verification-before-completion`, `writing-plans`, `writing-skills`

### AI Engineering from Scratch (Rohit Ghumare)

`blueprint-figure`, `build-project`, `check-understanding`, `claude-certification`, `course-guide`, `course-style`, `find-your-level`, `interview-prep`, `isometric-explainer`, `learn`, `learn-agent-skills`, `learn-mcp`, `learn-reverse-engineering`, `lesson-screen`, `mcpa-certification`, `motion-figure`, `start-learning`, `write-manual`

## Interpretation

This collection includes substantial upstream material. The local entrypoints have Codex-specific language and other edits, while most bundled references and assets remain unchanged. Three sampled entrypoints (`copywriting`, `systematic-debugging`, `learn-agent-skills`) retained most upstream lines. Credit the original authors prominently and describe Hardik Bandhiya as the curator and adapter.

The upstream projects use MIT licenses; see [third-party notices](THIRD_PARTY_NOTICES.md). The `isometric-explainer` kit also carries its own license. This audit identifies repository origin by matching paths and Git blob hashes; it is not a legal certification of every embedded third-party example, image, or quoted passage.

