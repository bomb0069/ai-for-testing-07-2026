# Requirement: Coupon Discount at Checkout

**Feature ID:** SHOP-142 · **Status:** Ready for testing · **Version:** 1.3

## Overview

Customers can apply one coupon code at checkout to receive a discount on their
order. The shop currency is THB.

## Business rules

| # | Rule |
|---|---|
| R1 | Only **one coupon per order** may be applied. |
| R2 | A coupon has a **minimum purchase amount**. Orders below it are rejected with message `MIN_PURCHASE_NOT_MET`. |
| R3 | Coupons expire at **23:59:59 (Asia/Bangkok)** on the expiry date. |
| R4 | **Percentage coupons** are capped at a maximum discount of **300 THB** per order. |
| R5 | The discount applies to the **item subtotal only** — never to the shipping fee. |
| R6 | A coupon code is **case-insensitive** (`save10` = `SAVE10`). |
| R7 | Applying an invalid, expired, or used-up coupon shows an error and keeps the cart unchanged. |
| R8 | Coupons cannot be used on discounted items. |

> ⚠️ Rule R8 is stated exactly as the product owner wrote it. If it seems
> ambiguous to you... it is. That's intentional.

## Active coupons (test environment)

| Code | Type | Value | Min purchase | Expires | Usage limit |
|---|---|---|---|---|---|
| `SAVE10` | Percentage | 10% | 500 THB | 2026-12-31 | unlimited |
| `HOT100` | Fixed amount | 100 THB | 300 THB | 2026-08-31 | 1,000 uses total |
| `WELCOME50` | Fixed amount | 50 THB | none | never | once per customer |
| `GONE20` | Percentage | 20% | 500 THB | 2025-01-31 (expired) | unlimited |

## Example

Cart: 2 items, subtotal 3,500 THB, shipping 50 THB, coupon `SAVE10`.
10% of 3,500 = 350 THB → capped at 300 THB (R4).
**Total = 3,500 − 300 + 50 = 3,250 THB.**
