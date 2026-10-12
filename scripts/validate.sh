#!/usr/bin/env bash
# Mechanical validation for the GRASP skill repo.
# Checks: frontmatter (name/description), name matches folder, referenced
# files exist, no stray TODO/FIXME markers, CHANGELOG covers the latest tag.
set -euo pipefail
cd "$(dirname "$0")/.."
FAIL=0
say() { printf '%s\n' "$*"; }
bad() { printf 'FAIL: %s\n' "$*"; FAIL=1; }

# 1. Frontmatter exists with name and description
head -1 SKILL.md | grep -q '^---$' || bad "SKILL.md missing frontmatter open"
grep -q '^name: grasp$' SKILL.md || bad "SKILL.md frontmatter must declare 'name: grasp'"
grep -q '^description:' SKILL.md || bad "SKILL.md frontmatter missing description"

# 2. Folder name matches skill name
[ "$(basename "$PWD")" = "grasp" ] || bad "folder name must match skill name (grasp)"

# 3. Referenced files exist (SKILL.md pointers and README structure block)
for f in references/signals.md references/research.md examples.md; do
  [ -f "$f" ] || bad "referenced file missing: $f"
  grep -q "$f" SKILL.md || bad "SKILL.md does not reference $f"
done

# 4. No stray TODO/FIXME markers (actionable-work markers only; linguistics
#    terms like "placeholder words" in the research are legitimate content)
if grep -rnE '\b(TODO|FIXME)\b' --include='*.md' .; then
  bad "stray TODO/FIXME markers found"
fi

# 5. CHANGELOG mentions a 1.x release entry
grep -q '^## \[1\.' CHANGELOG.md || bad "CHANGELOG has no 1.x release entry"

# 5b. Every '###' section belongs to the most recent '## [version]' heading
#     (heading-consumption regression); tested against real + orphan fixtures
awk '/^## /{lasth=$0} /^### /{if (lasth !~ /^## \[/) {print "CHANGELOG: section without version heading near: " $0; found=1}} END{exit found}' CHANGELOG.md \
  || bad "CHANGELOG has an entry missing its version heading"

# 6. Examples keep the format: one stated-interpretation reply per case (13 cases)
[ "$(grep -c '^> ' examples.md)" -eq 13 ] || bad "examples.md should have exactly 13 stated-interpretation replies"

# 7. The delivery bar is wired in: SKILL.md references it and it exists
[ -f references/standards.md ] || bad "references/standards.md missing"
grep -q 'references/standards.md' SKILL.md || bad "SKILL.md does not reference references/standards.md"

# 8. The pre-ship UI checklist is wired in: file exists, chain points at it
[ -f references/ui-checklist.md ] || bad "references/ui-checklist.md missing"
grep -q 'ui-checklist.md' references/standards.md || bad "standards.md does not reference ui-checklist.md"
grep -q 'pre-ship checklist' SKILL.md || bad "SKILL.md does not mention the pre-ship checklist"

[ "$FAIL" -eq 0 ] && say "ALL GREEN" || say "RED — fix the failures above"
exit "$FAIL"
