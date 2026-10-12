# Human Resources — TeamAI Collaboration Template

A ready-to-use **team AI repository** (TeamAI team repo) for HR teams covering the full
pipeline: **workforce planning → JD → sourcing & screening → interview → offer/onboarding →
performance → talent development**. Drop it on any Git host, run `teamai init`, and every
member's AI tool gets the same per-role contract, shared context, and privacy/compliance
guards.

[简体中文](README.zh-CN.md)

## What you get

| Layer | Where | Delivered to |
|---|---|---|
| **Pipeline context** — stage playbooks, org context, hiring principles, competency model, performance framework | `docs/` | every member, every AI tool |
| **Hard red lines** — PII protection + fair-employment rules (enforced, cannot be deleted) | `rules/` | everyone |
| **One contract per role** — recruiter / hrbp / td / hr-ops standards | `rules/<role>/` | role-scoped |
| **Role operating skills** — recruiting, performance management, talent development, HR ops | `skills/` | role-scoped |
| **Assist agents** — JD writer, resume screener (assist-only), interview question designer, performance coach, talent analyst, privacy reviewer | `agents/` | shared + role-scoped |
| **Guard hooks** — session context, secret guard, PII/compensation warning guard | `hooks/`, `scripts/hooks/` | installed automatically |

**The promise:** a new member (or a fresh agent session) only needs to know their role and
can start from *any* stage — with privacy and fairness rules applied from the first minute.

## Roles

| Role id | Owns | Entry point |
|---|---|---|
| `recruiter` | intake, JD, sourcing, screening, interviews, offers | `docs/lifecycle/01-workforce-planning.md` |
| `hrbp` | performance cycle, calibration, employee relations | `docs/lifecycle/06-performance.md` |
| `td` | competency model, IDP, training, succession | `docs/lifecycle/07-talent-development.md` |
| `hr-ops` | onboarding/offboarding, HRIS data, compliance filing | `docs/lifecycle/05-offer-onboarding.md` |

## Pipeline

`01 workforce planning → 02 JD → 03 sourcing & screening → 04 interview → 05 offer/onboarding → 06 performance → 07 talent development`

Two rules are enforced and non-removable:

- **`rules/pii-protection.md`** — mask PII at collection, keep raw data in ATS/HRIS, honor
  retention windows, never paste PII into prompts.
- **`rules/fairness-compliance.md`** — prohibited interview questions, structured scoring
  with behavioral evidence, calibration, reviewable negative decisions.

Agents are **assist-only** on people decisions: they organize material, score against
rubrics and check consistency — hiring/firing/performance conclusions stay with humans.

## Quick start

```bash
# 1. Admin: copy this directory to a new Git repo and push it
# 2. Before inviting anyone, edit:
#    teamai.yaml            -> repo URL, reviewers
#    env/env.yaml           -> ATS / HRIS endpoints, retention window
#    env/secrets.yaml       -> tokens (values stay on members' machines)
#    docs/context/          -> org-context, hiring-principles, competency-model, performance-framework
# 3. Every member:
teamai init https://github.com/your-org/your-teamai-repo
teamai roles set recruiter    # recruiter | hrbp | td | hr-ops
teamai pull
```

## Customize (45 minutes)

- [ ] `teamai.yaml` — repo URL, reviewers
- [ ] `manifest/roles.yaml` — roles for your org (e.g. add `c&b` → use `comp`)
- [ ] `docs/context/competency-model.md` — your job levels and behaviors
- [ ] `docs/context/performance-framework.md` — your cycle, weights, rating scale
- [ ] `docs/context/glossary.md` — your funnel and talent metric definitions
- [ ] `env/env.yaml` — `DATA_RETENTION_DAYS` and endpoints (check local law first)
- [ ] `docs/templates/` — interview rounds, approval chains

## Repository layout

```text
teamai.yaml            team config
manifest/roles.yaml    role -> namespace mapping
docs/                  pipeline stages, templates, org/status/standards context
rules/                 collaboration + PII + fairness (enforced) + role standards
skills/                SOPs per role/stage
agents/                assist agents (never decision-makers on people outcomes)
hooks/ + scripts/      session-context, guard-secrets, guard-pii
env/                   shared variables + secret declarations
models/ mcp/           model aliases, MCP servers
```

Requires [teamai-cli](https://www.npmjs.com/package/teamai-cli) (`npm install -g teamai-cli`).
