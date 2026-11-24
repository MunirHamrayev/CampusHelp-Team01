# Stakeholder Analysis and Requirements – CampusHelp (T02)

## 1. Stakeholder analysis

| Stakeholder | Interest | Influence | Needs from CampusHelp | Engagement strategy |
|---|---|---|---|---|
| Students | High | Medium | Quick request submission, visible status, no paperwork | Keep informed; design the form for them |
| University Administration (sponsor) | High | High | Visibility of all requests, workload reports | Manage closely; approve charter and changes |
| IT support staff | High | Medium | Clear IT requests, assignment, priority | Keep informed; validate categories |
| Maintenance staff | Medium | Low | Location details, priority | Keep informed |
| Library staff | Medium | Low | Library-specific requests | Monitor |
| Administrative office | Medium | Medium | Document / enrolment requests | Keep satisfied |
| Lecturer (assessor) | High | High | Evidence of PM practice in GitHub | Manage closely; follow the brief |

## 2. Functional requirements

| ID | Requirement | Feature | Priority |
|---|---|---|---|
| FR-01 | A student can submit a request with Student ID, Full name, Category, Location, Description and Priority. Student ID, Category, Description and Priority are required. | 1. Submission | Must |
| FR-02 | The system offers four categories (IT Support, Classroom Maintenance, Library Assistance, Administrative Services) and three priorities (High, Medium, Low). | 2. Categories & priority | Must |
| FR-03 | Each submitted request gets a unique ID in the format `CH-YYYY-NNNN`, shown on a confirmation screen. | 3. Tracking ID | Must |
| FR-04 | A student can enter a request ID and see its category, priority, assigned staff, status and last update. | 3. Tracking | Must |
| FR-05 | An administrator can assign a request to a staff member or team. | 4. Assignment | Must |
| FR-06 | An administrator can change status: Open → In Progress → Completed. | 5. Status updates | Must |
| FR-07 | The dashboard shows counts of Open, In Progress and Completed requests and a filterable list. | 6. Dashboard | Must |
| FR-08 | The submission form validates required fields and shows an error message next to each missing field. | 1. Submission | Must |
| FR-09 | *(Change request CR-01, deferred)* Automatic email acknowledgment on submission. | – | Phase 2 |

## 3. Non-functional requirements

| ID | Requirement |
|---|---|
| NFR-01 | Usability: a new student can submit a request in under 2 minutes without help. |
| NFR-02 | Accessibility: every form field has a visible label; the interface works by keyboard. |
| NFR-03 | Compatibility: the prototype runs in current Chrome, Edge and Firefox with no installation. |
| NFR-04 | Responsiveness: layout is usable at 375 px (phone) and 1280 px (desktop) widths. |
| NFR-05 | Privacy: the prototype stores no real personal data; all data is in-memory sample data. |

## 4. Traceability – six proposed features

| # | Proposed feature | Requirements | Wireframe | Prototype screen |
|---|---|---|---|---|
| 1 | Student request submission | FR-01, FR-08 | W1 | "Submit request" tab |
| 2 | Categories and priority levels | FR-02 | W1 | Category/priority fields |
| 3 | Tracking by unique request ID | FR-03, FR-04 | W1, W2 | Confirmation + "Track request" tab |
| 4 | Administrator assignment | FR-05 | W3 | "Assign to" column |
| 5 | Status updates | FR-06 | W3 | "Status" column |
| 6 | Dashboard (open / ongoing / completed) | FR-07 | W3 | Admin dashboard cards |
