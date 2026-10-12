# Product + Design + Engineering — TeamAI Collaboration Template

> Put your team's process, standards and project context into everyone's AI tool.
> A new member — or a fresh AI session — can start from **any stage** after naming their
> role, with no background briefing.

[简体中文](README.md) — the primary, user-facing guide.

## What it fixes

| Before | After |
|---|---|
| Onboarding means finding three people and five docs | Every session starts with live status, stage playbooks and role standards |
| Everyone's AI improvises its own way of working | Same role → same contract (how requirements are written, what review checks) |
| Conclusions live in chat history | One status doc + append-only decision log, visible to all |
| Rules depend on self-discipline | Secrets are blocked, PII is flagged before it lands in shared docs |

## What you get

- **Full-lifecycle playbook** (`docs/`): discovery → definition → design → development →
  testing → release → retro; each stage states entry conditions, actions, outputs,
  definition of done and handoff, with ready-to-use templates.
- **One contract per role** (`rules/`, `skills/`): red lines and SOPs for PM / design /
  dev / QA — delivered only to the matching role.
- **Review agents** (`agents/`): PRD review, design review, code review, test-plan review,
  handoff check, context keeper.
- **Guard hooks** (`hooks/`): session context injection, secret blocking, PII warnings.

## How to use it

### Team lead — first-time setup (conversation only, no Git skills needed)

1. Copy this template into a new Git repo on your platform (or ask your AI tool to do it).
2. In your AI tool say **"帮我配置团队"** — the `team-setup` assistant will interview you
   about roles and process, extract context from whatever material you paste (slides,
   policies, meeting notes, old docs), configure who sees what, and produce a plain-language
   **Configuration Review Sheet** for your sign-off.
3. Forward the invite blurb at the end of the sheet to your team.

### Team member — 3 minutes

```bash
npm install -g teamai-cli
# then say in your AI tool:
/teamai Help me join my team's TeamAI, repo URL is https://github.com/your-org/your-repo
teamai roles set pm    # pm | design | dev | qa
```

Everything else (standards, docs, agents, hooks) arrives and stays updated automatically.

### Day-to-day management — just talk

The built-in `/teamai` entry covers publishing skills/rules/docs, member and role
management, env/MCP setup and the team dashboard (e.g. `/teamai Help me manage my team`).

## Pipeline & roles

`01 discovery → 02 definition → 03 design → 04 development → 05 testing → 06 release → 07 retro`

| Role | Owns | Gets |
|---|---|---|
| `pm` | requirements, PRD, acceptance | requirement-analysis skill, PRD reviewer |
| `design` | interaction/visual, design system | design workflow, design reviewer |
| `dev` | tech design, implementation, release | dev workflow, code reviewer |
| `qa` | test strategy, defects, release gate | QA workflow, test-plan reviewer |

## FAQ

- **Which AI tools?** Any mainstream one (Claude, Codex, Cursor, CodeBuddy, OpenCode, …);
  standards are translated to each tool's native format.
- **Where does our data live?** Only in your own Git repo. Secrets stay on members'
  machines (`teamai env set`); PII is masked before entering shared docs.
- **Changing standards?** Say `/teamai Help me update <rule>` — one publish, everyone syncs.
  Enforced rules (collaboration charter, context hygiene) cannot be deleted by members.
