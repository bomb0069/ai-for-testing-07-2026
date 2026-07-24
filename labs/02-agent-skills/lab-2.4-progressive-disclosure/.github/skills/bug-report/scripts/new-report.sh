#!/usr/bin/env bash
# Create a new bug report file from the team template.
# Usage: bash .github/skills/bug-report/scripts/new-report.sh <short-slug>
set -euo pipefail

slug="${1:?usage: new-report.sh <short-slug>}"
skill_dir="$(cd "$(dirname "$0")/.." && pwd)"
out_dir="bug-reports"
out="${out_dir}/$(date +%Y%m%d)-${slug}.md"

mkdir -p "${out_dir}"
if [[ -e "${out}" ]]; then
  echo "ERROR: ${out} already exists" >&2
  exit 1
fi

# The template file wraps the report skeleton in a ```markdown fence — strip it.
awk '/^```markdown$/{inside=1; next} /^```$/{inside=0; next} inside' \
  "${skill_dir}/references/report-template.md" > "${out}"

echo "Created ${out}"
