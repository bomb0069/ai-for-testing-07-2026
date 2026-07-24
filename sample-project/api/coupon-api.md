# Coupon API (test environment)

Base URL: `https://shop-test.example.com/api/v1`

## POST /cart/{cartId}/coupon

Apply a coupon to a cart.

**Request body**

```json
{ "code": "SAVE10" }
```

**Responses**

| Status | Body (`error` field) | Meaning |
|---|---|---|
| 200 | – | Applied; response contains recalculated cart totals |
| 400 | `COUPON_INVALID` | Code does not exist |
| 400 | `COUPON_EXPIRED` | Past expiry date/time |
| 400 | `MIN_PURCHASE_NOT_MET` | Subtotal below coupon minimum |
| 400 | `COUPON_ALREADY_APPLIED` | Cart already has a coupon |
| 400 | `USAGE_LIMIT_REACHED` | Coupon used up (total or per-customer) |

**200 response example**

```json
{
  "cartId": "c-1001",
  "subtotal": 3500,
  "discount": 300,
  "shipping": 50,
  "total": 3250,
  "coupon": { "code": "SAVE10", "type": "PERCENT", "value": 10 }
}
```

## DELETE /cart/{cartId}/coupon

Remove the applied coupon. Always returns 200 with recalculated totals.
