# AGENTS.md — Coupon feature QA workspace

## About this workspace

QA workspace for the shop checkout **coupon discount** feature (SHOP-142).

- `requirements/coupon-discount.md` — business rules R1–R8 and the coupon table
- `api/coupon-api.md` — endpoints and exact error codes
- `test-cases/` — all test cases live here, one file per feature
- `templates/test-case-template.md` — the mandatory test-case format

## Rules for writing test cases (must follow)

1. Use `templates/test-case-template.md` **exactly** — no other format.
2. Save to `test-cases/<feature>-test-cases.md`.
3. Every test case cites the rule it verifies (`Requirement: R4`).
4. Negative cases state the exact error code from `api/coupon-api.md`.
5. Amounts always include the currency: `3,250 THB`, never `3250`.
6. Every boundary rule (min purchase, discount cap, expiry moment) gets
   at-boundary, below-boundary, and above-boundary cases.
7. Never invent behavior for ambiguous requirements. Put them in an
   `## Open questions` section at the end of the file instead.

## Tone

Test cases are written in English, short imperative steps, one action per step.
