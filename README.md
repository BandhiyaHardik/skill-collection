# Hardik Bandhiya's Skill Collection

A personal, curated toolkit of 86 Agent Skills for marketing, AI learning, technical writing, and software development, maintained by [Hardik Bandhiya (@BandhiyaHardik)](https://github.com/BandhiyaHardik). I use these workflows with Codex and adapt them as I learn what works for my projects. The underlying material comes from other open-source authors; see [third-party notices](THIRD_PARTY_NOTICES.md) and the [source audit](SOURCE_AUDIT.md).

My approach is practical: start with the user's real context, use the tools that are actually available, check important claims, and keep outside actions within the user's authorization. I keep the full range of topics because my work spans building, learning, and growth.

## Explore the skills

Browse the complete [alphabetical catalog](SKILLS.md), or search locally from PowerShell:

```powershell
./scripts/list-skills.ps1
./scripts/list-skills.ps1 -Search 'copy|seo|debug'
./scripts/list-skills.ps1 -Markdown
```

Each entry links to its `SKILL.md`, which explains when and how to use it. Good starting points:

| Goal | Start with |
| --- | --- |
| Write a page or campaign | [copywriting](skills/copywriting/SKILL.md), [marketing-plan](skills/marketing-plan/SKILL.md) |
| Learn AI engineering | [start-learning](skills/start-learning/SKILL.md), [learn-agent-skills](skills/learn-agent-skills/SKILL.md) |
| Build or debug software | [brainstorming](skills/brainstorming/SKILL.md), [systematic-debugging](skills/systematic-debugging/SKILL.md) |

## Install and use

Once this collection is published as `BandhiyaHardik/skill-collection`, list available skills without installing them:

```bash
npx skills add BandhiyaHardik/skill-collection --list
```

Install one skill for Codex across your projects:

```bash
npx skills add BandhiyaHardik/skill-collection --skill copywriting -a codex -g
```

Omit `-g` to install in the current project. Replace `copywriting` with any name in the [catalog](SKILLS.md). To see installed skills, run `npx skills list`. To use one, mention it in your request, for example: “Use `$copywriting` to draft a landing page from this brief.” The `npx skills` commands come from the [Skills CLI](https://github.com/vercel-labs/skills/blob/main/docs/commands.md); Node.js and npm are required. The repository name in these examples is the intended publication name; replace it if the GitHub repository is named differently.

### Manual Codex installation

Install a skill by copying its **entire folder**, including `references`, `scripts`, and assets, into your Codex skills directory. In this setup, user skills live under `$CODEX_HOME/skills` (normally `~/.codex/skills`). For a single project, use that project's `.agents/skills/` directory. You can then mention a skill by name, for example `$copywriting`, or select it from the skills picker when available. Reopen the Codex session if a newly installed skill is not discovered immediately.

The repository's `plugin.json` describes the whole collection for hosts that support this plugin format. Keeping the folder in GitHub alone does not install its skills into Codex.

## Source and authorship

This is a curated adaptation, not an original 86-skill framework. The source families are [Marketing Skills by Corey Haines](https://github.com/coreyhaines31/marketingskills), [Superpowers by Jesse Vincent](https://github.com/obra/superpowers), and [AI Engineering from Scratch by Rohit Ghumare](https://github.com/rohitg00/ai-engineering-from-scratch). Some individual references credit additional authors. The [source audit](SOURCE_AUDIT.md) maps every bundled skill file to one of these repositories: 476 of 611 are byte-for-byte identical to current upstream, and 135 differ. All 86 `SKILL.md` entrypoints differ, though representative samples retain most upstream lines.

The [MIT license](LICENSE) covers my original packaging and changes and preserves the upstream copyright notices. Individual files may carry additional credit.

## Before a public release

- Check embedded third-party examples, images, and quotes that may have separate terms from their host repository.
- Keep upstream copyright and permission notices with any substantial MIT-licensed copies. [Third-party notices](THIRD_PARTY_NOTICES.md) records the verified sources and a license already embedded in one kit.
- Review executable scripts and outside integrations before recommending installation to other people.
- Confirm the final repository name and update the install commands if it differs from `skill-collection`.

This working copy is prepared locally. Publish it under `BandhiyaHardik/skill-collection` or update the install examples to match the final repository name.
