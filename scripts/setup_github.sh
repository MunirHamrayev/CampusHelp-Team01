#!/usr/bin/env bash
# CampusHelp – GitHub setup script
# Creates the labels, the 4 milestones, the 12 mandatory issues, the Project board,
# its custom fields, and fills Priority / Estimated Hours / Start Date / Due Date for every issue.
#
# Requirements: GitHub CLI (https://cli.github.com) logged in:
#     gh auth login
#     gh auth refresh -s project          # Projects need the "project" scope
# Run from the repository root (Git Bash on Windows works):
#     bash scripts/setup_github.sh
#
# Labels are safe to re-run; milestones, issues and the project are NOT - run the script ONCE.
set -euo pipefail

# ======== EDIT THESE ========
TEAM="XX"                                   # your team number
REPO="$(gh repo view --json nameWithOwner -q .nameWithOwner)"   # e.g. munir/CampusHelp-Team01
OWNER="${REPO%%/*}"
# Milestone due dates (Day 2, 4, 7, 10). Change if your lecturer gives a different start day.
M1_DUE="2026-11-12"; M2_DUE="2026-11-16"; M3_DUE="2026-11-19"; M4_DUE="2026-11-24"
# ============================

echo "Repository: $REPO"

# ---------- 1. Labels ----------
lbl() { gh label create "$1" --color "$2" --description "$3" --force >/dev/null && echo "  label: $1"; }
echo "Creating labels..."
lbl requirements   1D76DB "Requirements and stakeholder work"
lbl planning       0E8A16 "Schedule, WBS and resource planning"
lbl design         5319E7 "Screen designs and prototype work"
lbl testing        FBCA04 "Validation and test activities"
lbl documentation  0075CA "Reports and project documents"
lbl risk           D93F0B "Risk-related tasks"
lbl change-request B60205 "Proposed changes to scope"
lbl blocked        000000 "Work that cannot proceed"

# ---------- 2. Milestones ----------
ms() {
  gh api "repos/$REPO/milestones" -f title="$1" -f description="$2" -f due_on="$3T23:59:59Z" >/dev/null
  echo "  milestone: $1 (due $3)"
}
echo "Creating milestones..."
ms "M1 - Project Initiation"      "Day 2. Deliverables: project charter, requirements, stakeholders and initial WBS (T01-T03)." "$M1_DUE"
ms "M2 - Project Planning"        "Day 4. Deliverables: schedule, resource estimates, risk register, mockups and quality plan (T04-T06)." "$M2_DUE"
ms "M3 - Project Execution"       "Day 7. Deliverables: student request screen, admin dashboard, prototype demonstration and test cases (T07-T09)." "$M3_DUE"
ms "M4 - Monitoring and Closure"  "Day 10. Deliverables: change request, verification report, final progress status and consolidated submission (T10-T12)." "$M4_DUE"

declare -A MSNAME=( [M1]="M1 - Project Initiation" [M2]="M2 - Project Planning" [M3]="M3 - Project Execution" [M4]="M4 - Monitoring and Closure" )

# ---------- 3. Issues ----------
echo "Creating issues..."
declare -A URL
while IFS='|' read -r id title labels mkey body; do
  [ -z "$id" ] && continue
  [ "$id" = "CR01" ] && continue          # CR-01 is raised on Day 6 - see below
  u=$(gh issue create --title "$title" --body-file "$body" --label "$labels" \
        --milestone "${MSNAME[$mkey]}" --assignee "@me")
  URL[$id]="$u"; echo "  $id -> $u"
done < issues/index.txt

# ---------- 4. Project board ----------
echo "Creating project..."
PNUM=$(gh project create --owner "$OWNER" --title "CampusHelp Project Management - Team$TEAM" --format json -q .number)
PID=$(gh project view "$PNUM" --owner "$OWNER" --format json -q .id)
gh project link "$PNUM" --owner "$OWNER" --repo "$REPO" >/dev/null || true

gh project field-create "$PNUM" --owner "$OWNER" --name "Priority"        --data-type SINGLE_SELECT --single-select-options "High,Medium,Low" >/dev/null
gh project field-create "$PNUM" --owner "$OWNER" --name "Estimated Hours" --data-type NUMBER >/dev/null
gh project field-create "$PNUM" --owner "$OWNER" --name "Actual Hours"    --data-type NUMBER >/dev/null
gh project field-create "$PNUM" --owner "$OWNER" --name "Start Date"      --data-type DATE   >/dev/null
gh project field-create "$PNUM" --owner "$OWNER" --name "Due Date"        --data-type DATE   >/dev/null

F_PRIO=$(gh project field-list "$PNUM" --owner "$OWNER" --format json -q '.fields[]|select(.name=="Priority").id')
F_EST=$(gh project field-list "$PNUM" --owner "$OWNER" --format json -q '.fields[]|select(.name=="Estimated Hours").id')
F_START=$(gh project field-list "$PNUM" --owner "$OWNER" --format json -q '.fields[]|select(.name=="Start Date").id')
F_DUE=$(gh project field-list "$PNUM" --owner "$OWNER" --format json -q '.fields[]|select(.name=="Due Date").id')
opt() { gh project field-list "$PNUM" --owner "$OWNER" --format json -q ".fields[]|select(.name==\"Priority\").options[]|select(.name==\"$1\").id"; }
O_HIGH=$(opt High); O_MED=$(opt Medium); O_LOW=$(opt Low)

# id | priority | est | start | due   (baseline from docs/schedule-and-budget.md)
PLAN="T01|High|4|2026-11-11|2026-11-11
T02|High|4|2026-11-11|2026-11-12
T03|Medium|4|2026-11-12|2026-11-12
T04|High|4|2026-11-13|2026-11-13
T05|Medium|4|2026-11-13|2026-11-16
T06|Medium|4|2026-11-16|2026-11-16
T07|High|4|2026-11-17|2026-11-17
T08|High|4|2026-11-17|2026-11-18
T09|High|4|2026-11-19|2026-11-19
T10|Medium|3|2026-11-18|2026-11-20
T11|High|3|2026-11-23|2026-11-23
T12|Medium|3|2026-11-23|2026-11-24"

echo "Adding issues to the board and filling fields..."
while IFS='|' read -r id pr est st du; do
  ITEM=$(gh project item-add "$PNUM" --owner "$OWNER" --url "${URL[$id]}" --format json -q .id)
  case $pr in High) O=$O_HIGH;; Medium) O=$O_MED;; *) O=$O_LOW;; esac
  gh project item-edit --project-id "$PID" --id "$ITEM" --field-id "$F_PRIO"  --single-select-option-id "$O" >/dev/null
  gh project item-edit --project-id "$PID" --id "$ITEM" --field-id "$F_EST"   --number "$est" >/dev/null
  gh project item-edit --project-id "$PID" --id "$ITEM" --field-id "$F_START" --date "$st" >/dev/null
  gh project item-edit --project-id "$PID" --id "$ITEM" --field-id "$F_DUE"   --date "$du" >/dev/null
  echo "  $id: $pr, ${est}h, $st -> $du"
done <<< "$PLAN"

echo
echo "Done. Project: https://github.com/users/$OWNER/projects/$PNUM"
echo "Next: in the project, add a Table view and a Roadmap view (Roadmap dates = Start Date / Due Date)."
echo "On Day 6, raise the change request with:"
echo "  gh issue create --title 'CR-01 - Automatic email acknowledgment on submission' --body-file issues/CR-01.md \\"
echo "     --label change-request,risk --milestone 'M4 - Monitoring and Closure' --assignee @me"
echo "then add it to the board and comment 'Linked to #<T10 issue number>' on it."
