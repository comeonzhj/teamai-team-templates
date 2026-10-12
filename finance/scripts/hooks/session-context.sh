#!/usr/bin/env bash
# SessionStart hook: point every agent session at the team's live finance pipeline.

context_dir=""
for candidate in ".teamai/docs" "$HOME/.teamai/docs"; do
  if [ -f "$candidate/context/current-status.md" ]; then
    context_dir="$candidate"
    break
  fi
done

cat <<EOF
[team context] Finance team (budgeting -> transaction & expense audit -> monthly close -> tax filing -> reporting & analysis -> internal control).
Start from the shared context before doing anything else:
1. ${context_dir:-.teamai/docs}/context/current-status.md     — close status, budget cycle, filings, audit items (single source of truth).
2. ${context_dir:-.teamai/docs}/context/close-calendar.md     — statutory and internal deadlines.
3. ${context_dir:-.teamai/docs}/context/accounting-standards.md — accounting policy and account mapping (口径真源).
DISCIPLINE (rules/accuracy-discipline.md, enforced): every number carries a source and a definition; reconcile before you report; never round silently.
CONTROLS (rules/financial-controls.md, enforced): segregation of duties, approval limits, evidence retention; bank/ERP credentials only via `teamai env exec --`.
If the user names a role (accounting / fpna / tax / treasury), load that role's skill and rules first.
Update context/current-status.md and context/decisions.md before you finish.
EOF
