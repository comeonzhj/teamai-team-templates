# TeamAI Team Collaboration Templates (4)

> For team leads: **pick a template, have one conversation with your AI, and your team gets
> a shared AI collaboration contract plus project context** — applied to every member's
> AI tool automatically.

[简体中文](README.md) — the primary, user-facing guide.

## What this is

Templates for a "team AI collaboration repository": your process, standards, context and
review criteria, structured and synced to everyone's AI tools via
[teamai-cli](https://www.npmjs.com/package/teamai-cli) (Claude, Codex, Cursor, CodeBuddy,
OpenCode, ...). Data stays in your own Git repo; same role → same contract; one status doc
every session reads.

## Choose a template

| Your team | Template | Pipeline | Roles |
|---|---|---|---|
| Product + Design + Engineering (+QA) | [`product-dev-design/`](product-dev-design/) | discovery → design → dev → test → release → retro | pm · design · dev · qa |
| Content marketing | [`content-marketing/`](content-marketing/) | topic → research → creation → review → distribution → retro | strategy · writer · editor · ops |
| Human resources | [`human-resources/`](human-resources/) | planning → JD → screening → interview → performance → development | recruiter · hrbp · td · hr-ops |
| Finance | [`finance/`](finance/) | budgeting → audit → close → tax → reporting → controls | accounting · fpna · tax · treasury |

## How to use it (conversation only, no Git skills needed)

1. **Create your team repo** — copy a template to your Git platform (or ask your AI to do it).
2. **Configure by talking** — say "帮我配置团队"; the `team-setup` assistant interviews you,
   extracts team context from whatever material you paste, configures per-role resource
   visibility, and produces a plain-language **Configuration Review Sheet** for sign-off.
3. **Invite members** — they say `/teamai Help me join my team's TeamAI, repo URL is <URL>`
   and pick their role. Everything else is automatic.

## Who provides what (conversational capabilities)

| Provided by | Covers | Trigger |
|---|---|---|
| teamai built-in | create/join team repo, onboarding, publishing skills/docs/agents, env & MCP, roles & projects, dashboard | `/teamai ...` |
| this template | context extraction from raw material, role × resource permission design, configuration review sheet | "帮我配置团队" (`team-setup`) |

Delivery record (technical structure, verification): [DELIVERY.md](DELIVERY.md)
