# Example prompt — copy everything below the line into Copilot CLI

---

You are a senior QA engineer. Write test cases for the coupon discount feature
described below. Base every test case ONLY on the stated rules — if a rule is
ambiguous, do not invent behavior; list it under "Open questions" instead.

## Requirement (SHOP-142, v1.3)

- R1: Only one coupon per order.
- R2: Each coupon has a minimum purchase amount; orders below it are rejected
  with error `MIN_PURCHASE_NOT_MET`.
- R3: Coupons expire at 23:59:59 (Asia/Bangkok) on the expiry date.
- R4: Percentage coupons are capped at a maximum discount of 300 THB per order.
- R5: Discount applies to the item subtotal only, never the shipping fee.
- R6: Coupon codes are case-insensitive.
- R7: Invalid/expired/used-up coupons show an error and leave the cart unchanged.
- R8: Coupons cannot be used on discounted items.

Active test coupons:

| Code | Type | Value | Min purchase | Expires |
|---|---|---|---|---|
| SAVE10 | Percent | 10% | 500 THB | 2026-12-31 |
| HOT100 | Fixed | 100 THB | 300 THB | 2026-08-31 |
| WELCOME50 | Fixed | 50 THB | none | never (once per customer) |
| GONE20 | Percent | 20% | 500 THB | 2025-01-31 (expired) |

API errors: `COUPON_INVALID`, `COUPON_EXPIRED`, `MIN_PURCHASE_NOT_MET`,
`COUPON_ALREADY_APPLIED`, `USAGE_LIMIT_REACHED`.

## Output format

For each test case use exactly:

```
## TC-COUPON-<NNN>: <title>
- Type: Positive | Negative | Boundary
- Priority: P1 | P2 | P3
- Requirement: <rule id>
Preconditions / Steps (numbered) / Expected result
```

Requirements for the set:
- Cover every rule R1–R8 at least once.
- Every boundary (min purchase, 300 THB cap, expiry moment) gets
  at/below/above cases.
- Expected results must state exact amounts in THB and exact error codes.
- End with an "Open questions" section for anything ambiguous.
