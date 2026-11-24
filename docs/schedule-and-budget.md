# Schedule, Dependencies and Budget – CampusHelp (T04)

Working calendar: 10 working days, Monday–Friday. Day 1 = Wed 11 Nov 2026.

| Day | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 |
|---|---|---|---|---|---|---|---|---|---|---|
| Date | Wed 11 Nov | Thu 12 Nov | Fri 13 Nov | Mon 16 Nov | Tue 17 Nov | Wed 18 Nov | Thu 19 Nov | Fri 20 Nov | Mon 23 Nov | Tue 24 Nov |

## 1. Task schedule (baseline)

| ID | Task | Role | Priority | Est. h | Predecessor | Start | Due | Milestone |
|---|---|---|---|---|---|---|---|---|
| T01 | Develop project charter | A | High | 4 | – | 11 Nov | 11 Nov | M1 |
| T02 | Gather stakeholder requirements | B | High | 4 | None | 11 Nov | 12 Nov | M1 |
| T03 | Prepare scope and WBS | C | Medium | 4 | T01 (FS) | 12 Nov | 12 Nov | M1 |
| T04 | Prepare schedule, dependencies and budget | A | High | 4 | T03 (FS) | 13 Nov | 13 Nov | M2 |
| T05 | Design initial wireframes | B | Medium | 4 | T02 (FS) | 13 Nov | 16 Nov | M2 |
| T06 | Develop risk register and quality plan | C | Medium | 4 | – | 16 Nov | 16 Nov | M2 |
| T07 | Create student request interface prototype | B | High | 4 | T05 (FS) | 17 Nov | 17 Nov | M3 |
| T08 | Create administrator dashboard prototype | A | High | 4 | T05 (FS) | 17 Nov | 18 Nov | M3 |
| T09 | Prepare and execute prototype test cases | C | High | 4 | T07, T08 (FS) | 19 Nov | 19 Nov | M3 |
| T10 | Evaluate and document change request | A | Medium | 3 | CR received Day 6 | 18 Nov | 20 Nov | M4 |
| T11 | Perform final verification and issue review | C | High | 3 | T09, T10 (FS) | 23 Nov | 23 Nov | M4 |
| T12 | Consolidate final report and closure documents | B | Medium | 3 | T11 (FS) | 23 Nov | 24 Nov | M4 |
| | **Total** | | | **45** | | | | |

### Planned daily workload (single resource)

Because one person holds all three roles, tasks that could run in parallel in a team of three are done one after another. The work was levelled to keep every day at or below 7 hours:

| Day | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | Total |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Planned hours | 6 | 6 | 5 | 7 | 6 | 3 | 4 | 2 | 4 | 2 | **45** |
| Tasks worked | T01, T02 | T02, T03 | T04, T05 | T05, T06 | T07, T08 | T08, T10 | T09 | T10 | T11, T12 | T12 | |

## 2. Dependencies

Diagram: `diagrams/dependencies.svg`

| Task | Predecessor | Dependency type |
|---|---|---|
| T02 Requirements | None | – |
| T03 WBS | T01 | Finish-to-Start |
| T04 Schedule | T03 | Finish-to-Start |
| T05 Wireframes | T02 | Finish-to-Start |
| T07 Student interface | T05 | Finish-to-Start |
| T08 Admin interface | T05 | Finish-to-Start |
| T09 Testing | T07 and T08 | Finish-to-Start |
| T11 Final verification | T09 and T10 | Finish-to-Start |
| T12 Final report | T11 | Finish-to-Start |

T01 and T06 have no predecessor. T10 can only start when the client change request is received on Day 6, which is an external constraint.

## 3. Critical path

Longest chain by effort:

**T02 → T05 → T07 / T08 → T09 → T11 → T12** = 4 + 4 + 8 + 4 + 3 + 3 = **26 hours** (T07 and T08 are both on the path because one person builds them one after the other).

The second chain, T01 → T03 → T04 (12 h), ends at M2 and has float until Day 4.

### Tasks most likely to delay the whole project

| Task | Why it can delay the project |
|---|---|
| **T05 Wireframes** | Both prototypes (T07, T08) depend on it. A one-day slip pushes M3 and the testing window, and there is no parallel team member to absorb it. |
| **T09 Testing** | It needs both prototypes finished, and it is the only task scheduled on Day 7, the M3 deadline. Any failed test means rework on T07/T08 before verification. |
| **T10 Change request** | The trigger is external (Day 6) and the scope decision is not under the team's control. Its effort is uncertain, and T11 cannot start until it is closed. |
| **T11 Final verification** | It joins two chains (T09 and T10). It also has a gatekeeping role: any missing evidence found here must be fixed before T12, with only Day 9–10 left. |

## 4. Budget

Rate (academic simulation): **50,000 UZS per person-hour**.

| Role | Tasks | Hours | Cost (UZS) |
|---|---|---|---|
| A – Project Manager | T01, T04, T08, T10 | 15 | 750,000 |
| B – Business Analyst & Designer | T02, T05, T07, T12 | 15 | 750,000 |
| C – Quality & Risk Coordinator | T03, T06, T09, T11 | 15 | 750,000 |
| **Baseline budget** | 12 tasks | **45** | **2,250,000** |
| Management reserve (10%) | – | 4.5 | 225,000 |
| **Total authorised** | | **49.5** | **2,475,000** |

By milestone: M1 = 12 h / 600,000 · M2 = 12 h / 600,000 · M3 = 12 h / 600,000 · M4 = 9 h / 450,000.

This is a simulated planning cost, not an actual payment. The change request (CR-01, +3 h = 150,000 UZS) was **deferred**, so the baseline did not change (see `change-request-CR01.md`).
