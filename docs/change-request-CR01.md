# Change Request CR-01 – Automatic Email Acknowledgment (T10)

| Field | Value |
|---|---|
| CR ID | CR-01 |
| Received | Day 6 – Wed 18 Nov 2026 |
| Requested by | University Administration (sponsor, simulated via lecturer) |
| Logged by / owner | Munir Xammrayev (Role A – Project Manager) |
| GitHub Issue | `CR-01 – Automatic email acknowledgment on submission` (labels `change-request`, `risk`; linked to T10) |
| Decision date | Day 8 – Fri 20 Nov 2026 |
| **Decision** | **DEFER** to Phase 2 (not approved for this project baseline) |

## 1. Requested change

> "The university administration now wants students to receive an automatic email acknowledgment whenever a service request is submitted."

When a request is submitted, CampusHelp would send the student an email with the request ID, category, priority and a tracking link.

## 2. Scope assessment

**Outside the original scope.** The approved charter lists *"live SMS/email services"* as **out of scope**, and the constraints exclude external service charges. The six baseline features do not include notifications. Approving the change would therefore be a scope change, not a clarification.

## 3. Effort and cost estimate

Provisional estimate from the brief: 3 h. Revised bottom-up estimate:

| Activity | Role | Hours |
|---|---|---|
| Update requirements (new FR-09) and charter scope | A / B | 0.5 |
| Design the acknowledgment email template and confirmation wireframe | B | 1.0 |
| Prototype: simulated "email sent" preview on the confirmation screen | B | 1.0 |
| New test case (TC-09) and regression of TC-04 / TC-05 | C | 1.0 |
| Re-baseline schedule, Issues and milestone M3/M4 | A | 0.5 |
| **Total (simulated email only)** | | **4.0 h = 200,000 UZS** |
| *Real email delivery (SMTP/email service, student email lookup, consent)* | – | *not estimable in this project; needs a server, a service account and possibly paid sending* |

The provisional 3 h **underestimates** the work by about 1 h, because regression testing and re-baselining were not included. Even then, the result would be a *simulation* of an email, not the real feature the sponsor asked for.

## 4. Affected tasks and milestones

| Item | Impact if approved |
|---|---|
| T02 Requirements | New FR-09 and an updated traceability table |
| T05 Wireframes | Confirmation screen redesign |
| T07 Student interface | Rework of a screen that has already passed testing |
| T09 Testing | New TC-09 plus regression; M3 (Day 7) has already passed, so it would need re-verification |
| T11 / T12 | +1 day pressure on verification and the final report |
| M4 | Risk of missing the Day 10 deadline |

## 5. Schedule and risk impact

- **Schedule:** by Day 8 the project had already used 3.5 h of the 4.5 h reserve (42.5 h actual vs 39 h planned). Adding 4 h would push the forecast to about 53 h, **3.5 h beyond** the 49.5 h authorised (45 h + reserve). It would also leave no buffer for verification (T11) and the final report (T12), the last two critical-path tasks.
- **Cost:** +200,000 UZS. Forecast cost would rise from 2,450,000 to about 2,650,000 UZS, above the authorised 2,475,000 UZS.
- **Risk:** raises R01 (single member, no backup) and R04 (late defects – it changes an already-tested screen). It brings in a new risk: privacy and consent obligations for storing student email addresses (NFR-05 currently says no real personal data is stored).

## 6. Options considered

| Option | Benefit | Drawback |
|---|---|---|
| Approve | Sponsor satisfied now | Breaks charter scope; exceeds the reserve; only a fake email can be delivered; threatens M4 |
| Reject | Protects baseline | Ignores a valid business need from the sponsor |
| **Defer** | Protects baseline and M4; keeps the need recorded for a phase that can actually deliver real email | Sponsor waits for Phase 2 |

## 7. Recommendation and decision

**Recommendation: DEFER.** The feature is valuable but clearly out of the agreed scope. In this project it can only be *simulated*, at a cost that would exceed the authorised budget during the riskiest last days. Real email delivery needs infrastructure (server, email service) that the charter excludes. The need is recorded as **FR-09 (Phase 2)** in `requirements.md`. The confirmation screen shows a label saying email acknowledgment is planned for Phase 2, so stakeholders can see the decision without any rework.

**Decision:** Deferred by the Project Manager on Day 8, recorded in the CR-01 Issue. The sponsor (simulated) is informed.

## 8. Baseline revision

| Baseline item | Change |
|---|---|
| Scope | No change; FR-09 added as Phase 2 backlog |
| Schedule / milestones | No change |
| Budget | No change (2,250,000 UZS) |
| Issues | CR-01 Issue closed as *Deferred*; T10 closed with a link to this document |
