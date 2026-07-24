# Severity guide (team standard, v2)

| Level | Label | Criteria | Examples |
|---|---|---|---|
| S1 | Critical | Data loss, security breach, payment charged wrongly, or checkout completely blocked for all users. No workaround. | Order total charged twice; cannot complete any checkout |
| S2 | Major | A core business rule produces a wrong financial outcome, or a main flow is blocked for a significant group. Workaround may exist but is unreasonable. | Valid coupon rejected; discount amount calculated wrong; cap not applied |
| S3 | Minor | Functional issue with a reasonable workaround, or affecting an edge group only. | Error message shows wrong text but correct behavior; coupon field not cleared after removal |
| S4 | Trivial | Cosmetic; no functional impact. | Misaligned label; typo |

Tie-breakers:

- **Money wrong → at least S2.** A customer being denied a discount they are
  entitled to is a wrong financial outcome (S2), even if only at a boundary.
- Boundary-only occurrence does **not** lower severity by itself — boundaries
  are where real carts live (free-shipping thresholds, minimums).
- If reproducible < 100%, note it, but rate by impact when it *does* occur.
