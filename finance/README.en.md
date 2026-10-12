# Finance — TeamAI Collaboration Template

> Put your budget-to-close process, metric definitions and control discipline into
> everyone's AI tool. New teammates start from **any stage** after naming their role — with
> the numbers discipline and controls rules applied from the first minute.

[简体中文](README.md) — the primary, user-facing guide.

## What it fixes

| Before | After |
|---|---|
| Definitions live in individuals' heads | One source of truth for accounting policy and metric definitions; every number carries definition + source + as-of date |
| Close runs on memory and nagging | Close calendar + status board; changes must be recorded |
| Tax-book differences "disappear" in filings | Mandatory tax-book difference ledger; three legal dispositions only |
| Controls by goodwill, audits by panic | Enforced segregation of duties, approval limits, evidence chains |
| New hires learn by asking around | Pipeline playbook + role SOPs + assist agents |

## What you get

- **Pipeline playbook** (`docs/`): budgeting → expense audit → monthly close → tax filing →
  reporting & analysis → internal control, with templates (budget package, expense audit
  checklist, journal voucher, close checklist, filing checklist, management report,
  variance analysis).
- **One contract per role** (`rules/`, `skills/`) for accounting / fpna / tax / treasury.
- **Assist agents** (`agents/`): reconciliation checker, internal-control reviewer, voucher
  auditor, budget analyst, tax advisor (advisory only), cash forecaster.
- **Two enforced red lines**: financial controls (segregation of duties, approvals,
  evidence, confidentiality) and accuracy discipline (reconcile first, no silent rounding).
- **Guard hooks**: session context with deadlines and definitions, secret blocking,
  bank-card/PII masking warnings.

## How to use it

### Finance lead — first-time setup (conversation only)

1. Copy this template into a new Git repo (ask your AI tool if unsure).
2. Say **"帮我配置团队"** — the `team-setup` assistant interviews you, extracts accounting
   policy / approval limits / close calendar / metric definitions from your raw material
   (**masking sensitive data first**), configures per-role visibility, and produces a
   plain-language **Configuration Review Sheet** for sign-off.
3. Forward the invite blurb to your team.

### Team member — 3 minutes

```bash
npm install -g teamai-cli
# say in your AI tool:
/teamai Help me join my team's TeamAI, repo URL is https://github.com/your-org/your-repo
teamai roles set accounting    # accounting | fpna | tax | treasury
```

### Day-to-day — just talk

`/teamai Help me manage my team` covers publishing, members and roles, env/MCP, dashboard.

## Pipeline & roles

`01 budgeting → 02 expense audit → 03 monthly close → 04 tax filing → 05 reporting → 06 internal control`

| Role | Owns | Gets |
|---|---|---|
| `accounting` | GL, AR/AP, expense audit, close | accounting skill, close workflow, voucher auditor |
| `fpna` | budget, forecast, variance, reporting | FP&A skill, budget analyst |
| `tax` | filings, invoicing, tax risk | tax skill, tax advisor (advisory) |
| `treasury` | cash, banking, internal control | treasury skill, cash forecaster, control reviewer |

## FAQ

- **Can AI move money, file taxes or post entries?** No — an enforced red line. Agents
  reconcile, analyze and draft; payments, filings and postings stay human, with maker +
  checker discipline intact.
- **Why trust the numbers?** Definition + source + as-of date on every figure; reconcile
  before reporting; every difference gets one of three documented dispositions.
- **Is sensitive data safe?** Credentials never enter the repo (`teamai env set` locally,
  run via `teamai env exec`, read-only accounts recommended); bank cards masked; salaries
  need-to-know.
- **Is tax advice reliable?** Tax agent output is **advisory only, not formal tax advice**;
  the tax lead confirms and files.
