# Team Structure

| Full name | Student ID | GitHub username | Role(s) |
|---|---|---|---|
| Munir Xammrayev | `<student ID>` | `<github username>` | Student A – Project Manager |
| Munir Xammrayev | (same) | (same) | Student B – Business Analyst & Designer |
| Munir Xammrayev | (same) | (same) | Student C – Quality & Risk Coordinator |

## Working arrangement

This project is completed by one student who holds all three roles. The role structure from the brief is kept, so every task is still traceable to a role. Each Issue states the role it belongs to ("Role A", "Role B", "Role C"), and each role has its own branch prefix (`pm-`, `ba-`, `qa-`).

| Role | Main responsibilities | Tasks owned |
|---|---|---|
| A – Project Manager | Charter, schedule, milestones, monitoring, change control, admin dashboard prototype | T01, T04, T08, T10 |
| B – Business Analyst & Designer | Requirements, stakeholders, wireframes, student prototype, final report | T02, T05, T07, T12 |
| C – Quality & Risk Coordinator | WBS, risk register, quality plan, test cases, verification | T03, T06, T09, T11 |

### Peer review in a one-person team

GitHub does not let an author approve their own Pull Request. Peer review is therefore carried out as a **cross-role review**: work produced under one role is checked against that role's acceptance criteria while acting in a different role. The review is posted as a PR review comment, using the checklist in `docs/quality-plan.md`. Each review comment states which role performed it. This is a documented deviation from the team-of-three brief (see Risk R07).
