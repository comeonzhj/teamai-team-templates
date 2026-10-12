#!/usr/bin/env bash
# SessionStart hook: point every agent session at the team's live context.
# Nothing to configure — it prints a short orientation block as extra context.

context_dir=""
for candidate in ".teamai/docs" "$HOME/.teamai/docs"; do
  if [ -f "$candidate/context/current-status.md" ]; then
    context_dir="$candidate"
    break
  fi
done

cat <<EOF
[team context] Product / Design / Engineering collaboration team.
Start from the shared context before doing anything else:
1. ${context_dir:-.teamai/docs}/context/current-status.md  — what is in flight right now (single source of truth).
2. ${context_dir:-.teamai/docs}/onboarding.md              — find your role charter and the stage entry points.
3. ${context_dir:-.teamai/docs}/lifecycle/                 — every stage doc lists inputs, outputs and its definition of done; you can start from any stage.
If the user names a role (PM / design / dev / QA), load that role's skill and rules first.
When your work changes status or a decision, update context/current-status.md and context/decisions.md before you finish (see the context-hygiene rule).
EOF
