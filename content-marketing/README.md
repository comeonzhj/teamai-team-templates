# Content Marketing — TeamAI Collaboration Template

A ready-to-use **team AI repository** (TeamAI team repo) for content marketing teams
covering the full pipeline: **topic selection → research → creation → editorial review →
distribution → performance retro**. Drop it on any Git host, run `teamai init`, and every
member's AI tool gets the same per-role contract plus the team's shared context.

[简体中文](README.zh-CN.md)

## What you get

| Layer | Where | Delivered to |
|---|---|---|
| **Pipeline context** — stage playbooks, content calendar, brand voice, personas, strategy | `docs/` | every member, every AI tool |
| **One contract per role** — rules incl. a non-negotiable compliance red line | `rules/`, `rules/<role>/` | shared + role-scoped |
| **Role operating skills** — topic research, writing, editorial review, distribution & analytics | `skills/` | role-scoped |
| **Review agents** — topic / SEO / editorial / analytics reviewers, fact-checker, brand voice keeper | `agents/` | shared + role-scoped |
| **Guard hooks** — session context injection, secret guard, advertising-claims guard | `hooks/`, `scripts/hooks/` | installed automatically |
| **Env & secrets** — CMS / analytics endpoints, publishing tokens | `env/` | via `teamai env exec` |

**The promise:** a new member (or a fresh agent session) only needs to know their role and
can start from *any* pipeline stage — no background briefing.

## Roles

| Role id | Owns | Entry point |
|---|---|---|
| `strategy` | topic selection, content calendar, gap analysis | `docs/lifecycle/01-topic-selection.md` |
| `writer` | research synthesis, outline, drafting, SEO structure | `docs/lifecycle/02-research.md` |
| `editor` | fact / copyright / compliance / brand-voice review | `docs/lifecycle/04-editorial-review.md` |
| `ops` | distribution, channel tuning, analytics and retro | `docs/lifecycle/05-distribution.md` |

## Pipeline

`01 topic → 02 research → 03 creation → 04 review → 05 distribution → 06 retro`

Every stage doc states entry conditions, actions, outputs, definition of done and handoff.
Compliance (`rules/content-safety.md`, enforced) is a hard gate: claims, citations,
copyright and privacy are checked before anything is published.

## Quick start

```bash
# 1. Admin: copy this directory to a new Git repo and push it
# 2. Before inviting anyone, edit:
#    teamai.yaml            -> repo URL, reviewers
#    env/env.yaml           -> your CMS / analytics endpoints
#    env/secrets.yaml       -> your tokens (values stay on members' machines)
#    docs/context/          -> brand-voice, personas, content-strategy, glossary
# 3. Every member:
teamai init https://github.com/your-org/your-teamai-repo
teamai roles set writer     # strategy | writer | editor | ops
teamai pull
```

## Customize (30 minutes)

- [ ] `teamai.yaml` — repo URL, reviewers
- [ ] `manifest/roles.yaml` — roles (e.g. add `video`, `social`)
- [ ] `docs/context/brand-voice.md` — your brand voice, banned words, channel styles
- [ ] `docs/context/audience-personas.md` / `content-strategy.md` — your audiences & pillars
- [ ] `docs/context/glossary.md` — your metric definitions (the single source of truth for metric definitions)
- [ ] `scripts/hooks/guard-claims.sh` — extend the banned-claim word list for your region
- [ ] `env/`, `mcp/`, `models/aliases.yaml` — your endpoints, tools and models

## Repository layout

```text
teamai.yaml            team config (sharing policy, post-pull hook deploy)
manifest/roles.yaml    role -> namespace mapping
docs/                  pipeline stages, templates, calendar/status, decisions
rules/                 always-on norms + content-safety red line
skills/                SOPs per stage/role
agents/                fact-checker, brand-voice-keeper, topic/seo/editorial/analytics reviewers
hooks/ + scripts/      session-context, guard-secrets, guard-claims
env/                   shared variables + secret declarations
models/ mcp/           model aliases, MCP servers
```

Requires [teamai-cli](https://www.npmjs.com/package/teamai-cli) (`npm install -g teamai-cli`).
