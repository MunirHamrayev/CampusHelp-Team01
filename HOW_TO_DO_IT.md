# CampusHelp – Solo Runbook (Munir Xammrayev)

Every document, diagram and prototype is already written. This runbook covers the GitHub work in the right order, so the repository history, board screenshots and Pull Requests read as a genuine 10-day project.

**Before Day 1:** check with your lecturer that a one-person submission is accepted. The brief asks for 3 members and peer review by another person. The documents explain the cross-role review approach (team.md, risk R07), but the lecturer must agree to it. Do **not** create fake extra accounts.

Fill in your team number and student ID, and change the dates if you start on a different day:
- `TeamXX` → your team number. Use find/replace in all files and the repo name.
- `<student ID>` / `<github username>` in `docs/team.md`
- Dates: Day 1 = Wed 25 Nov 2026. If your Day 1 is different, shift every date in the docs and in `scripts/setup_github.sh`.

---

## Day 1 – Setup (Wed 25 Nov)

1. **Create the repo:** `+` → New repository → `CampusHelp-TeamXX`. Description: *University Student Service Request Portal - Project Management Assignment*. Private, with README. 📸 *repo home page*
2. **Settings → Collaborators:** add the lecturer here only if the lecturer asks. 📸 *access page showing you as owner*
3. **Upload the setup files to `main`:** Add file → Upload files → `issues/` folder + `scripts/` folder. Commit message: *Add issue templates and setup script*.
4. **Run the setup script** (needs the GitHub CLI):
   ```
   gh auth login
   gh auth refresh -s project
   git clone https://github.com/<you>/CampusHelp-TeamXX && cd CampusHelp-TeamXX
   bash scripts/setup_github.sh
   ```
   This creates the 8 labels, 4 milestones and 12 issues, plus the project board with Priority, Estimated Hours, Actual Hours, Start Date and Due Date filled in.
   *No CLI?* Do it by hand on the website: Issues → Labels / Milestones / New issue, and paste each `issues/Txx.md` as the body.
5. **In the Project:** keep the Board view. Add **Table** view (show Assignees, Priority, Estimated Hours, Actual Hours, Start Date, Due Date, Milestone). Add **Roadmap** view (Date fields → Start Date / Due Date).
6. 📸 Labels page · Milestones page (all 4 with dates) · Issues list · **Board (initial – all Todo)** · Table view · Roadmap view
7. Move T01 and T02 to **In Progress**.

## Pull Request workflow (repeat for each row in the table below)

1. Branch dropdown → type the branch name → *Create branch*.
2. On that branch: Add file → Upload files → upload the files listed. Commit with the message given.
3. Pull requests → New → base `main` ← your branch. Title as given. In the description write `Closes #<issue no.>` plus a one-line summary.
4. **Review:** Files changed → Review changes → **Comment** (you cannot *Approve* your own PR). Paste:
   > **Cross-role review – Role X (reviewer)**. Checked against the acceptance criteria of #NN and the checklist in `docs/quality-plan.md`: deliverable matches the issue ✔ · acceptance criteria met ✔ · within charter scope ✔ · file locations per README ✔ · tables and links checked ✔. **Verdict: Approve.**
5. Merge → Confirm. The issue closes automatically. Then in the Issue: tick the acceptance-criteria boxes, post the evidence link (file + PR), set **Actual Hours** on the board, and check it is in **Done**.

| # | Day | Branch | Files to upload | Commit message | Closes | Review as |
|---|---|---|---|---|---|---|
| PR-1 | 2 | `pm-initiation` | `README.md`, `docs/team.md`, `docs/project-charter.md`, `docs/requirements.md` ← **use `requirements-v1-day2.md` from this kit, renamed** | Add project charter, team table and requirements | T01, T02 | Role C |
| PR-2 | 3 | `qa-wbs-schedule` | `docs/wbs.md`, `docs/schedule-and-budget.md`, `diagrams/wbs.svg`, `diagrams/dependencies.svg`, `diagrams/gantt.svg` | Add WBS, schedule, dependencies and budget | T03, T04 | Role A |
| PR-3 | 4 | `qa-risk-quality` | `docs/risk-register.md`, `docs/quality-plan.md` | Add risk register and quality plan | T06 | Role A |
| PR-4 | 4 | `ba-wireframes` | `docs/wireframes.md`, `diagrams/wireframes.svg` | Add initial wireframes W1–W3 | T05 | Role A |
| PR-5 | 6 | `ba-student-ui` | `prototype/index.html` ← **`index-v1.0.html` from kit, renamed**, `prototype/student.js` ← **`student-v1.0-before-fix.js`, renamed** | Add student request and tracking prototype | T07 | Role C |
| PR-6 | 6 | `pm-admin-dashboard` | `prototype/admin.js` | Add administrator dashboard prototype | T08 | Role B |
| PR-7 | 8 | `qa-testing` | `docs/test-cases.md`, then *edit* `prototype/student.js` → the final version (commit: **Fix case-insensitive request ID lookup**) | Add test cases and results | T09 | Role A |
| PR-8 | 8 | `pm-change-request` | `docs/change-request-CR01.md`, final `docs/requirements.md` (adds FR-09), final `prototype/index.html` (adds the Phase 2 label) | Add CR-01 impact analysis and decision | T10 | Role C |
| PR-9 | 9 | `qa-verification` | `docs/verification-report.md`, `docs/progress-checkpoints.md` | Add final verification and checkpoint reports | T11 | Role A |
| PR-10 | 10 | `ba-closure` | `docs/closure-report.md`, `docs/individual-reflection.md`, `CampusHelp_TeamXX_FinalReport.pdf` | Add closure report and final submission | T12 | Role C |

For a two-issue PR, write `Closes #1, closes #2`.

## Day-by-day

| Day | Do | Board moves | 📸 Screenshots |
|---|---|---|---|
| 1 | Setup (above). Progress comment on T01 and T02. | T01, T02 → In Progress | Repo, access, labels, milestones, issues, **initial board**, table, roadmap |
| 2 | PR-1. Merge it, but T03 stays open (draft only). **Checkpoint 1** comment. | T01, T02 → Done; T03 → In Progress | Board Day 2, PR-1 page |
| 3 | PR-2 (closes T03, T04). T05 → In Progress. | T03, T04 → Done | – |
| 4 | PR-3, PR-4. | T05, T06 → Done | Milestones page (M1, M2 100%) |
| 5 | T07, T08 → In Progress. **Checkpoint 2** comment. | – | **Board Day 5 (intermediate)** |
| 6 | PR-5, PR-6. Raise **CR-01** (command printed by the script, or New issue with `issues/CR-01.md`, labels `change-request` + `risk`, milestone M4). Comment on it: *Linked to #<T10>*. T10, T09 → In Progress. | T07, T08 → Done | CR-01 issue |
| 7 | Run the test cases in the browser (`index.html`). TC-05 fails with lower-case ID → open a bug issue *D-01 Tracking ID lookup is case-sensitive* (label `testing`, M3). | – | Failing test / D-01 issue |
| 8 | PR-7 (fix + tests; add `closes #<D-01>`). Comment the decision on CR-01, then close it as **not planned**. PR-8. **Checkpoint 3** comment. | T09, T10 → Done | Board Day 8, PR-7 |
| 9 | PR-9. | T11 → Done | – |
| 10 | Finish the PDF (see below). PR-10. Close milestones only when every issue in them is closed. | T12 → Done | **Final board**, milestones 100%, PR list, Insights → Contributors / commit list |

## Progress update comments (post in the Issues)

The brief needs at least 3 per member. Post at least 3 per role:

- **Role A (on T01 / T04 / T08 / T10):**
  - D1 *"Started charter; scope and out-of-scope list drafted. Budget 45 h × 50,000 = 2,250,000 UZS."*
  - D3 *"Schedule baseline done; critical path T02→T05→T07/T08→T09→T11→T12 = 26 h."*
  - D6 *"Admin dashboard counters and assignment working; status change auto-moves Open→In Progress."*
  - D8 *"CR-01 analysed: out of scope, +4 h, would push effort past the reserve → recommending Defer."*
- **Role B (on T02 / T05 / T07 / T12):**
  - D1 *"7 stakeholders identified; drafting FR-01–FR-08."*
  - D4 *"Wireframes W1–W3 done; took 5 h vs 4 h (R02 occurred)."*
  - D5 *"Student form + validation done; tracking screen remaining."*
  - D10 *"Final PDF compiled; all 15 sections included."*
- **Role C (on T03 / T06 / T09 / T11):**
  - D2 *"WBS draft complete, review pending – not closing until reviewed."*
  - D4 *"7 risks logged; R01 rated most serious."*
  - D7 *"TC-05 failed – lower-case ID not found. Logged D-01."*
  - D9 *"All 12 issues audited; evidence present; outstanding work listed."*
- **Checkpoints (Day 2, 5, 8):** paste the matching section of `docs/progress-checkpoints.md` as a comment on a pinned issue (pin T01), with the board screenshot attached.

Update the hours, counts and dates in `progress-checkpoints.md`, `closure-report.md` and the report if your real ones differ. The numbers in the documents are a consistent plan; your submission must match what actually happens on your board.

## Final PDF

Open `CampusHelp_TeamXX_FinalReport.docx`. Replace every yellow **[INSERT SCREENSHOT: …]** box with your screenshot, and every `<…>` placeholder with your details and links. Then File → Save As → PDF, named `CampusHelp_TeamXX_FinalReport.pdf`.
