# Product + Design + Engineering — TeamAI Collaboration Template

A ready-to-use **team AI repository** (TeamAI team repo) for product/design/engineering
teams. Drop it on any Git host, run `teamai init`, and every member's AI coding tool
gets the same collaboration contract — per role — plus the team's full-lifecycle context.

[简体中文](README.zh-CN.md)

## What you get

| Layer | Where | Delivered to |
|---|---|---|
| **Full-lifecycle context** — stage playbooks, live status, decision log, templates | `docs/` | every member, every AI tool |
| **One contract per role** — always-on rules (red lines, standards) | `rules/`, `rules/<role>/` | shared + role-scoped |
| **Role operating skills** — step-by-step SOPs | `skills/common/`, `skills/<role>/` | role-scoped |
| **Review agents** — PRD / design / code / test-plan reviewers | `agents/`, `agents/<role>/` | shared + role-scoped |
| **Guard hooks** — session context injection, secret & PII guards | `hooks/`, `scripts/hooks/` | installed automatically |
| **Env & secrets** — shared variables, per-member secrets | `env/` | via `teamai env exec` |

**The promise:** a new member (or a fresh agent session) only needs to know their role
and can start working from *any* stage — no background briefing required.

## Roles

| Role id | Owns | Key entry point |
|---|---|---|
| `pm` | requirement discovery, PRD, acceptance | `docs/lifecycle/01-discovery.md` |
| `design` | interaction & visual design, design system | `docs/lifecycle/03-design.md` |
| `dev` | technical design, implementation, release | `docs/lifecycle/04-development.md` |
| `qa` | test strategy, defects, release gate | `docs/lifecycle/05-testing.md` |

## Lifecycle

`01 discovery → 02 definition → 03 design → 04 development → 05 testing → 06 release → 07 retro`

Every stage doc (`docs/lifecycle/`) states its entry conditions, key actions, outputs,
definition of done, and handoff — so anyone can pick up work mid-stream. Handoffs follow
the `stage-handoff` skill so downstream never has to chase missing context.

## Quick start

```bash
# 1. Admin: copy this directory to a new Git repo and push it
#    (GitHub / GitLab / TGit / CNB / any private Git host, members need write access)

# 2. Edit before inviting anyone
#    teamai.yaml        -> repo: URL, reviewers
#    env/env.yaml       -> your shared variables
#    env/secrets.yaml   -> the secrets your tools need
#    docs/context/      -> your product overview, glossary, status

# 3. Every member
teamai init https://github.com/your-org/your-teamai-repo   # project scope (default)
teamai roles set pm                                         # pm | design | dev | qa
teamai pull
```

Members then open their AI tool as usual — skills, rules, agents, docs and hooks arrive
automatically and stay up to date on every pull.

## How the context system works

1. `docs/context/current-status.md` is the **single source of truth** for what is in
   flight. Every session is pointed at it by the `session-context` hook.
2. `docs/context/decisions.md` records every binding decision (append-only).
3. `docs/lifecycle/<stage>.md` + `docs/templates/` define how work is produced at each
   stage — outputs always use the templates, never ad-hoc structures.
4. The `context-hygiene` rule (enforced) makes updating status/decisions part of the
   definition of done.

## Customize for your team (30 minutes)

- [ ] `teamai.yaml` — repo URL, reviewers, enforced rules
- [ ] `manifest/roles.yaml` — rename/split roles (e.g. `dev` → `dev-frontend`/`dev-backend`)
- [ ] `docs/context/product-overview.md` — your product, users, metrics
- [ ] `docs/context/glossary.md` — your terms and metric definitions
- [ ] `env/env.yaml`, `env/secrets.yaml`, `mcp/mcp.yaml` — your endpoints and tools
- [ ] `models/aliases.yaml` — models available in your org
- [ ] `rules/`, `skills/` — tune thresholds (CR size, response SLA, defect grades)
- [ ] `hooks/hooks.yaml` — keep, drop or extend the three guards

## Repository layout

```text
teamai.yaml            team config (sharing policy, post-pull hook deploy)
manifest/roles.yaml    role -> namespace mapping (what each role receives)
docs/                  shared context: lifecycle, templates, status, decisions
rules/                 always-on norms (root = shared, <role>/ = role-scoped)
skills/                operating SOPs (common/ = all roles, <role>/ = per role)
agents/                subagents (root = shared, <role>/ = per role)
hooks/hooks.yaml       team hooks (session context, secret guard, PII guard)
scripts/               hook scripts + post-pull deployer
env/                   shared variables + secret declarations
models/aliases.yaml    model aliases (strong / fast per tool)
mcp/mcp.yaml           MCP servers (empty by default, examples included)
```

Requires [teamai-cli](https://www.npmjs.com/package/teamai-cli) (`npm install -g teamai-cli`).
