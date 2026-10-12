#!/usr/bin/env bash
# PreToolUse guard: block a tool call that would leak a credential.
#
# Reads the hook payload (JSON) on stdin and scans the raw text for
# high-confidence credential shapes. Exit 2 blocks the tool call (Claude hook
# protocol, adopted by the other hook adapters teamai writes).
#
# Secrets never live in the repo or in prompts: declare them in env/secrets.yaml,
# set them per member with `teamai env set KEY`, and run CLIs through
# `teamai env exec -- <command>`.

payload=$(cat 2>/dev/null || true)

pattern='(ghp_[A-Za-z0-9]{20,}|github_pat_[A-Za-z0-9_]{20,}|gho_[A-Za-z0-9]{20,}|glpat-[A-Za-z0-9_-]{16,}|sk-[A-Za-z0-9]{20,}|AKIA[0-9A-Z]{16}|ASIA[0-9A-Z]{16}|xox[baprs]-[A-Za-z0-9-]{10,}|-----BEGIN [A-Z ]*PRIVATE KEY-----|(api[_-]?key|client[_-]?secret|access[_-]?token|refresh[_-]?token|password|passwd)[[:space:]]*[:=][[:space:]]*["'"'"']?[A-Za-z0-9/+_.=-]{12,})'

if printf '%s' "$payload" | grep -Eqi "$pattern"; then
  cat >&2 <<'EOF'
[teamai guard] Blocked: this tool call contains something that looks like a credential.
  - Never paste a token, key or password into code, docs, prompts or commit messages.
  - Declare it in env/secrets.yaml, then set your own value:  teamai env set KEY
  - Run the CLI that needs it through:  teamai env exec -- <command>
Remove the credential and retry.
EOF
  exit 2
fi

exit 0
