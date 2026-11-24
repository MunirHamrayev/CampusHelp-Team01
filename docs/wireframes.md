# Initial Wireframes – CampusHelp (T05)

Diagram: `diagrams/wireframes.svg` · Built prototype: `prototype/index.html`

| Wireframe | Screen | User | Requirements covered |
|---|---|---|---|
| W1 | Submit request: Student ID*, Full name, Category* (4 options), Location, Description*, Priority* (High / Medium / Low), Submit. Errors appear under each invalid field. | Student | FR-01, FR-02, FR-08 |
| W2 | Confirmation: unique ID `CH-2026-NNNN`, summary, "Track request" and "Submit another" buttons. Tracking: ID search and a result panel (category, priority, assignee, status, last update). | Student | FR-03, FR-04 |
| W3 | Admin dashboard: four counters (Total, Open, In Progress, Completed), filters (status, category, priority), request table with an inline *Assign to* and *Status* drop-down per row. | Administrator | FR-05, FR-06, FR-07 |

## Design decisions

- **One page, three tabs.** No navigation between files is needed, so the prototype works offline as a single HTML file.
- **Colour encodes status consistently:** Open = red, In Progress = amber, Completed = green, on both the dashboard and the tracking screen.
- **Assigning an Open request moves it to In Progress automatically.** This saves the administrator one step.
- **Low-fidelity first.** Wireframes were timeboxed to 4 h (risk R02). Visual polish was left to the prototype stage.

## Review

Reviewed by Role A against FR-01 to FR-08 on Day 4 (PR review comment).
