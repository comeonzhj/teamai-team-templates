#!/usr/bin/env bash
# SessionStart hook: point every agent session at the team's live content pipeline.

context_dir=""
for candidate in ".teamai/docs" "$HOME/.teamai/docs"; do
  if [ -f "$candidate/context/current-status.md" ]; then
    context_dir="$candidate"
    break
  fi
done

cat <<EOF
[team context] Content marketing team (topic -> research -> creation -> review -> distribution -> retro).
Start from the shared context before doing anything else:
1. ${context_dir:-.teamai/docs}/context/current-status.md   — content calendar and in-flight pieces (single source of truth).
2. ${context_dir:-.teamai/docs}/context/brand-voice.md      — the brand voice every piece must match.
3. ${context_dir:-.teamai/docs}/onboarding.md               — role charter and stage entry points.
Compliance is non-negotiable: ${context_dir:-.teamai/docs}/../rules/content-safety.md governs claims, copyright and AI disclosure.
If the user names a role (strategy / writer / editor / ops), load that role's skill and rules first.
Update context/current-status.md and context/decisions.md before you finish (see the context-hygiene rule).
EOF
