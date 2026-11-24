# Project Closure Report – CampusHelp (T12)

**Prepared by:** Munir Xammrayev · **Date:** Day 10 – Tue 24 Nov 2026 · **Status:** Closed
*Mock exercise: dates and figures follow the simulated 10-day schedule.*

## 1. Final status

All 12 mandatory Issues are closed with evidence, and all four milestones are complete. The clickable prototype covers all six proposed features and passed 8 of 8 test cases. Change request CR-01 was analysed and deferred.

## 2. Planned versus actual

| Measure | Planned | Actual | Variance |
|---|---|---|---|
| Duration | 10 working days | 10 working days | 0 |
| Effort | 45 h | 49 h | +4 h (+8.9%) |
| Cost (50,000 UZS/h) | 2,250,000 UZS | 2,450,000 UZS | +200,000 (within the 225,000 reserve) |
| Issues completed | 12 | 12 | 0 |
| Milestones on time | 4 | 3 | M1 closed ½ day late (T03 review) |
| Test pass rate | ≥ 90% | 100% (8/8) | – |
| Pull Requests | ≥ 3 | 5 (every role authored at least one) | +2 |

## 3. Major issues during the project

1. **Single-person resourcing.** Tasks planned as parallel had to run one after another, so the critical path grew from 22 h to 26 h. This was managed by levelling the daily workload (maximum 7 h).
2. **Wireframe overrun (R02).** T05 took 5 h against 4 h, which delayed the start of T07 and left the project one task behind at Day 5.
3. **Review bottleneck.** With no second person, every review had to be done cross-role. That delayed T03 and therefore M1.
4. **Scope change (R03).** CR-01 arrived on Day 6. Formal change control stopped it from entering the baseline unnoticed.

## 4. Lessons learned

| # | Lesson | What to do next time |
|---|---|---|
| L1 | A clear out-of-scope list in the charter made the change-request decision fast and easy to defend. | Always list exclusions explicitly in the charter. |
| L2 | Estimates for design work were optimistic. | Add 20–25% to first-time design tasks, or timebox them strictly. |
| L3 | With one person, "parallel" tasks are an illusion; the real critical path is longer. | Do resource levelling during planning, not after the first delay. |
| L4 | Screenshots of the board must be taken at the time; they cannot be recreated later. | Make screenshot capture part of the checkpoint checklist. |
| L5 | Closing an Issue only after review (Definition of Done) kept the milestone percentages honest. Day 2 showed 16.7%, not an inflated 25%. | Keep the Definition of Done strict. |

## 5. Unresolved work and handover

| Item | Status | Recommendation |
|---|---|---|
| FR-09 Email acknowledgment (CR-01) | Deferred | Implement in Phase 2 with a real backend and an email service |
| Authentication, database, hosting | Out of scope | Phase 2 – university SSO integration |
| Usability test with real students | Not done | Run with 5 students before the Phase 2 build |

## 6. Formal closure

| Check | Done |
|---|---|
| All approved work merged into `main` | ✔ |
| All Issues closed with evidence links | ✔ |
| Milestones reviewed | ✔ |
| Outstanding work documented | ✔ |
| Final PDF and links submitted | ✔ |

Project closed by the Project Manager on Tue 24 Nov 2026.
