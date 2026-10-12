# Finance — TeamAI Collaboration Template

A ready-to-use **team AI repository** (TeamAI team repo) for finance teams covering the full
pipeline: **budgeting → transaction & expense audit → monthly close → tax filing →
reporting & analysis → internal control & audit**. Drop it on any Git host, run
`teamai init`, and every member's AI tool gets the same per-role contract, shared context,
and accuracy/controls discipline.

[简体中文](README.zh-CN.md)

## What you get

| Layer | Where | Delivered to |
|---|---|---|
| **Pipeline context** — stage playbooks, close calendar, accounting policy, finance policy, metric definitions | `docs/` | every member, every AI tool |
| **Hard red lines** — financial controls (segregation of duties, approvals, evidence) + accuracy discipline (enforced) | `rules/` | everyone |
| **One contract per role** — accounting / fpna / tax / treasury standards | `rules/<role>/` | role-scoped |
| **Role operating skills** — monthly close, budgeting & forecast, tax compliance, treasury & controls | `skills/` | role-scoped |
| **Review agents** — reconciliation checker, internal-control reviewer, voucher auditor, budget analyst, tax advisor (advisory), cash forecaster | `agents/` | shared + role-scoped |
| **Guard hooks** — session context, secret guard, bank-card/PII guard | `hooks/`, `scripts/hooks/` | installed automatically |

**The promise:** a new member (or a fresh agent session) only needs to know their role and
can start from *any* stage — with the numbers discipline and control rules applied from the
first minute.

## Roles

| Role id | Owns | Entry point |
|---|---|---|
| `accounting` | GL, AR/AP, expense audit, monthly close | `docs/lifecycle/03-monthly-close.md` |
| `fpna` | budgeting, rolling forecast, variance, reporting | `docs/lifecycle/01-budgeting.md` |
| `tax` | filings, invoicing, tax risk and planning | `docs/lifecycle/04-tax-filing.md` |
| `treasury` | cash management, banking, internal control & audit | `docs/lifecycle/06-internal-control.md` |

## Pipeline

`01 budgeting → 02 transaction & expense audit → 03 monthly close → 04 tax filing → 05 reporting & analysis → 06 internal control`

Two rules are enforced and non-removable:

- **`rules/financial-controls.md`** — segregation of duties, approval limits, evidence
  chains (voucher → document → approval), data confidentiality; agents never pay, never
  file, never post entries.
- **`rules/accuracy-discipline.md`** — every number carries definition + source + as-of
  date; reconcile before reporting; no silent rounding; audit trail always complete.

## Quick start

```bash
# 1. Admin: copy this directory to a new Git repo and push it
# 2. Before inviting anyone, edit:
#    teamai.yaml            -> repo URL, reviewers
#    env/env.yaml           -> ERP / bank / tax endpoints, reporting currency
#    env/secrets.yaml       -> tokens (read-only accounts; values stay on machines)
#    docs/context/          -> finance-policy, accounting-standards, close-calendar, glossary
# 3. Every member:
teamai init https://github.com/your-org/your-teamai-repo
teamai roles set accounting    # accounting | fpna | tax | treasury
teamai pull
```

## Customize (45 minutes)

- [ ] `teamai.yaml` — repo URL, reviewers
- [ ] `docs/context/accounting-standards.md` — your accounting policy and account mapping
- [ ] `docs/context/finance-policy.md` — expense standards and approval limits
- [ ] `docs/context/close-calendar.md` — your close and filing deadlines
- [ ] `docs/context/glossary.md` — your metric definitions (the single source of truth for metric definitions)
- [ ] `env/env.yaml` / `env/secrets.yaml` — systems and read-only credentials
- [ ] `docs/templates/` — voucher, close and filing checklists for your ERP

## Repository layout

```text
teamai.yaml            team config
manifest/roles.yaml    role -> namespace mapping
docs/                  pipeline stages, templates, policy/calendar/status context
rules/                 collaboration + controls + accuracy (enforced) + role standards
skills/                SOPs per role/stage
agents/                reconciliation, controls, voucher, budget, tax, cash agents
hooks/ + scripts/      session-context, guard-secrets, guard-pii
env/                   shared variables + secret declarations
models/ mcp/           model aliases, MCP servers
```

Requires [teamai-cli](https://www.npmjs.com/package/teamai-cli) (`npm install -g teamai-cli`).
