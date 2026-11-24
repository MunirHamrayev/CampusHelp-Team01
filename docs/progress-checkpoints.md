# Progress Monitoring – Status Checkpoints

> **Timeline note (mock exercise):** this project follows a simulated 10-day schedule (Day 1 = Wed 11 Nov 2026 to Day 10 = Tue 24 Nov 2026). Checkpoint data below is the simulated project status at each day. GitHub activity timestamps show when the repository was actually built.

**Formula:** Task completion % = (Closed Issues ÷ Total Issues) × 100, with Total Issues = 12 mandatory issues. (CR-01 is tracked separately.)
**Planned %** = tasks whose baseline due date is on or before the checkpoint ÷ 12.

| Checkpoint | Planned complete | Actual complete | Planned % | Actual % | Variance | Verdict |
|---|---|---|---|---|---|---|
| Day 2 – Thu 12 Nov | 3 (T01–T03) | 2 | 25.0% | 16.7% | −1 task | Slightly behind |
| Day 5 – Tue 17 Nov | 7 (T01–T07) | 6 | 58.3% | 50.0% | −1 task | Slightly behind |
| Day 8 – Fri 20 Nov | 10 (T01–T10) | 10 | 83.3% | 83.3% | 0 | On track |
| Day 10 – Tue 24 Nov (closure) | 12 | 12 | 100% | 100% | 0 | Complete |

---

## Checkpoint 1 – Day 2 (Thu 12 Nov 2026)

**Board:** Done – T01, T02 · In Progress – T03 · Todo – T04–T12
**Completion:** 2 / 12 = **16.7%** (planned 25.0%) → one task behind.
**Unfinished / blocked:** T03 WBS – the draft is complete, but its review is not done yet, so it does not meet the Definition of Done. Nothing is blocked.
**Actual hours to date:** T01 4.0 · T02 4.5 · T03 3.0 (in progress) = 11.5 h (planned 12 h).
**Upcoming milestone:** M1 is due today and will be 2/3 at the end of Day 2. It closes on the morning of Day 3.
**Action:** Finish the T03 review first thing on Day 3, then start T04. T04 has float until Day 4, so M2 is not at risk.

---

## Checkpoint 2 – Day 5 (Tue 17 Nov 2026)

**Board:** Done – T01–T06 · In Progress – T07, T08 · Todo – T09–T12
**Completion:** 6 / 12 = **50.0%** (planned 58.3%) → one task behind. Half the project is complete, but T07 should have finished today.
**Unfinished / blocked:** T07 Student interface – the form and validation are done; the tracking screen remains. T08 has started. Nothing is blocked.
**Actual hours to date:** 30.0 h (planned 30 h). T05 took 5 h against 4 h (risk R02 occurred); T06 took 3.5 h.
**Upcoming milestone:** M3 – Thu 19 Nov. T07 and T08 must finish by the end of Day 6 so that T09 can run on Day 7.
**Action:** Finish T07 on the morning of Day 6, then T08. Keep the dashboard to the six required features.

---

## Checkpoint 3 – Day 8 (Fri 20 Nov 2026)

**Board:** Done – T01–T10 · In Progress – T11 (preparation) · Todo – T12
**Completion:** 10 / 12 = **83.3%** (planned 83.3%) → **on track**.
**Unfinished / blocked:** None blocked. CR-01 was decided (Deferred) and T10 is closed.
**Actual hours to date:** 42.5 h (planned 39 h) – an overrun of 3.5 h, within the 4.5 h reserve.
**Upcoming milestone:** M4 – Tue 24 Nov. T11 runs on Day 9; T12 on Days 9–10.
**Action:** Verify the evidence links on all closed Issues before writing the closure report.

---

## Actual hours by task (final)

| Task | Est. | Actual | Variance |
|---|---|---|---|
| T01 | 4 | 4.0 | 0 |
| T02 | 4 | 4.5 | +0.5 |
| T03 | 4 | 5.0 | +1.0 |
| T04 | 4 | 4.0 | 0 |
| T05 | 4 | 5.0 | +1.0 |
| T06 | 4 | 3.5 | −0.5 |
| T07 | 4 | 4.5 | +0.5 |
| T08 | 4 | 5.0 | +1.0 |
| T09 | 4 | 4.0 | 0 |
| T10 | 3 | 3.0 | 0 |
| T11 | 3 | 3.0 | 0 |
| T12 | 3 | 3.5 | +0.5 |
| **Total** | **45** | **49.0** | **+4.0 (+8.9%)** |
