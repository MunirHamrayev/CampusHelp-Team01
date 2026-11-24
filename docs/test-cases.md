# Prototype Test Cases and Results – CampusHelp (T09)

**Object under test:** `prototype/index.html` with `student.js` v1.1 and `admin.js` (clickable HTML prototype)
**Tester:** Munir Xammrayev (Role C – Quality & Risk Coordinator)
**Environment:** Google Chrome, desktop 1200 × 900 and mobile 375 × 800
**Execution date:** Day 7 – Thu 19 Nov 2026 (simulated schedule)

**Implemented vs simulated:** form validation, ID generation, tracking, assignment, status update and dashboard counts are **implemented** in browser JavaScript. Data storage (in memory, reset on reload), login and email are **simulated / not implemented**, as set out in the charter.

| Test ID | Area (brief requirement) | Steps | Expected result | Actual result | Status |
|---|---|---|---|---|---|
| TC-01 | Required fields in the request submission interface | 1. Open *Submit request*. 2. Leave all fields empty. 3. Click **Submit request**. | Form is not submitted. Student ID, Category, Description and Priority are highlighted, each with an error message. | All four required fields are highlighted with messages; the confirmation is not shown. | **Pass** |
| TC-02 | Request category selection | 1. Open the *Request category* drop-down. | Exactly four categories: IT Support, Classroom Maintenance, Library Assistance, Administrative Services. Placeholder cannot be submitted. | Four categories listed; the placeholder triggers "Please select a request category." | **Pass** |
| TC-03 | Request priority selection | 1. View the *Priority* options. 2. Select each in turn. | High, Medium and Low are available; only one can be selected at a time. | Three radio options, single selection. | **Pass** |
| TC-04 | Confirmation after submission | 1. Enter Student ID `2024009876`, Category *IT Support*, Description "Wi-Fi keeps disconnecting in Lab 2.", Priority *High*. 2. Submit. | Confirmation screen shows a unique ID in the format `CH-2026-NNNN` and the status "Open". | Confirmation shows `CH-2026-0005`, *IT Support · High priority · Status: Open*. | **Pass** |
| TC-05 | Request status visibility (tracking) | 1. Click **Track this request**. 2. Search the ID in lower case (`ch-2026-0005`). 3. Search an unknown ID `CH-2026-9999`. | Request details and status are shown for a valid ID in any letter case; a clear "not found" message for an unknown ID. | Details and status shown for both `CH-2026-0005` and `ch-2026-0005`; the unknown ID shows "No request found". | **Pass** |
| TC-06 | Administrator dashboard information | 1. Open *Admin dashboard* after TC-04. | Cards show Total 5, Open 3, In Progress 1, Completed 1; the table lists all five requests with ID, student, category, priority, date, assignee and status. | Counts 5 / 3 / 1 / 1; all five rows shown. | **Pass** |
| TC-07 | Student ID format validation | 1. Enter Student ID `12ab`. 2. Submit. | Error "Student ID must be 6–12 digits."; not submitted. | Message shown; not submitted. | **Pass** |
| TC-08 | Assignment and status update flow | 1. Assign `CH-2026-0005` to *IT Help Desk*. 2. Set its status to *Completed*. 3. Filter by *Completed*. 4. Track the ID as a student. | Assigning moves it to In Progress (Open 2, In Progress 2). Completing gives Open 2 / In Progress 1 / Completed 2. Filter shows 2 rows. Tracking shows *Completed* and *IT Help Desk*. | All values as expected. | **Pass** |

## Summary

| Measure | Result |
|---|---|
| Test cases executed | 8 (6 mandatory areas + 2 additional) |
| Passed | **8 / 8 (100%)** – success criterion SC4 met |
| Defects found / open | 0 / 0 |

## Defect log

No defects were found. Any defect found later is to be logged as a GitHub Issue with the `testing` label (see `quality-plan.md` §5).
