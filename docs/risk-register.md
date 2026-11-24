# Risk Register – CampusHelp (T06)

Scoring: Probability and Impact on a 1–3 scale (Low = 1, Medium = 2, High = 3). **Score = P × I**. Score 6–9 = High, 3–4 = Medium, 1–2 = Low.

| ID | Risk (cause → effect) | P | I | Score | Owner | Mitigation (before) | Contingency (if it happens) | Status |
|---|---|---|---|---|---|---|---|---|
| R01 | The single team member is ill or unavailable for 1–2 days → all work stops, because there is no backup | Medium (2) | High (3) | **6** | A | Front-load the critical path; 4.5 h reserve; keep every file committed daily | Use the reserve; cut Low-value polish first; tell the lecturer early | Open – monitored |
| R02 | Wireframe/design work takes longer than 4 h → T07/T08 start late | High (3) | Medium (2) | **6** | B | Low-fidelity wireframes only; timebox to 4 h; core screens first | Build the prototype directly from the requirement list | Occurred Day 4 (+1 h), absorbed |
| R03 | Requirements change mid-project → scope creep and rework | Medium (2) | High (3) | **6** | A | Signed-off charter with explicit out-of-scope list; formal change control | Raise a `change-request` Issue and run an impact analysis | Occurred Day 6 (CR-01), controlled – deferred |
| R04 | Prototype defects found late → M3 or final verification fails | Medium (2) | High (3) | **6** | C | Test cases written before the build; self-test during T07/T08 | Fix within T09; log defects as Issues | Did not occur – 8/8 tests passed |
| R05 | GitHub access or permission problems (Projects scope, private repo) → evidence cannot be recorded | Medium (2) | Medium (2) | **4** | A | Verify repo, Issues and Projects access on Day 1 | Create the issues manually through the web UI | Closed Day 1 |
| R06 | Evidence (screenshots, links) is not captured at the right moment → board history cannot be reconstructed for the report | Medium (2) | Medium (2) | **4** | C | Screenshot checklist per checkpoint; capture the board on Day 1, 5 and 10 | Use Issue timelines and the commit history as evidence | Open – monitored |
| R07 | Brief assumes three members; peer review cannot come from another person → individual/PR marks are questioned | High (3) | Medium (2) | **6** | A | Confirm the solo arrangement with the lecturer; cross-role review with a documented checklist | Explain the deviation in the report and reflection | Open – accepted |

## Most serious risk

**R01 – single-member unavailability.** It shares the top score (6) with R02, R03, R04 and R07. It is ranked first because its impact is **total and has no workaround**. In a team of three, an absent member's critical tasks can be reassigned (the mitigation in the brief). Here there is nobody to reassign them to, so every task on the critical path stops at once. The other high risks affect one work package each and have contingencies inside the project (timeboxing, change control, retesting).

## Risk review log

| Date | Review |
|---|---|
| Day 1 – 11 Nov | Register created; R05 checked and closed |
| Day 5 – 17 Nov | R02 occurred (wireframes +1 h); absorbed by levelling Day 5 |
| Day 6 – 18 Nov | R03 occurred – CR-01 received and put through change control |
| Day 8 – 20 Nov | CR-01 deferred; R04 checked – all tests passed on Day 7 |
| Day 10 – 24 Nov | Final review; open risks closed at project closure |
