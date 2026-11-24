# Quality Plan – CampusHelp (T06)

## 1. Quality objectives

| Objective | Measure | Target |
|---|---|---|
| Complete deliverables | Issues closed with linked evidence | 12 / 12 |
| Requirement coverage | Proposed features present in requirements and prototype | 6 / 6 |
| Prototype correctness | Test cases passed | ≥ 90%, with no open High-severity defect |
| Reviewed work | Pull Requests with a review comment before merge | 100% |

## 2. Definition of Done (applies to every Issue)

An Issue may be moved to **Done** and closed only when:

1. The deliverable file exists on `main` (merged through a Pull Request where required).
2. Every acceptance criterion in the Issue is ticked.
3. The work has been reviewed against its acceptance criteria, and the review is recorded as a PR review or Issue comment.
4. The **Actual Hours** field is updated on the Project board.
5. A completion-evidence link (file, PR or commit) is posted in the Issue.

An Issue must **not** be closed just to raise a milestone percentage.

## 3. Review checklist (used for every Pull Request)

- [ ] The change matches the linked Issue's deliverable.
- [ ] All acceptance criteria are met.
- [ ] Content agrees with the charter scope (nothing out of scope is added silently).
- [ ] File names and locations follow the repository map in `README.md`.
- [ ] Spelling, tables and links are checked.
- [ ] Reviewer role stated (A, B or C) and a verdict given: *Approve* / *Changes needed*.

## 4. Quality control activities

| Activity | When | Role | Output |
|---|---|---|---|
| Charter and requirements review | Day 2 | C reviews A/B | PR review comments |
| Wireframe review against FR-01…FR-08 | Day 4 | A reviews B | PR review comment |
| Prototype self-check during build | Day 5–6 | B, A | Commits |
| Prototype test execution | Day 7–8 | C | `test-cases.md` |
| Final verification and Issue audit | Day 9 | C | `verification-report.md` |

## 5. Defect handling

Each defect found in testing is logged as a GitHub Issue with the `testing` label and a severity (High / Medium / Low). It is fixed by the owning role, the test is re-run, and the result is recorded in `test-cases.md`.
