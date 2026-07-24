# Example: Cart test cases (house style)

An example of the team's house style, produced with the template in
`sample-project/templates/test-case-template.md`. Used by Lab 1.3/1.4 so the
agent can imitate an existing artifact.

## TC-CART-001: Add a single in-stock item to an empty cart

- **Type:** Positive
- **Priority:** P1
- **Requirement:** CART-R1

**Preconditions:**
- Customer is signed in
- Cart is empty
- Item `SKU-1001` (price 250 THB) is in stock

**Steps:**
1. Open the product page for `SKU-1001`
2. Click **Add to cart**
3. Open the cart page

**Expected result:**
- Cart shows 1 line item: `SKU-1001`, qty 1, 250 THB
- Subtotal shows `250 THB`

## TC-CART-002: Quantity cannot go below 1

- **Type:** Boundary
- **Priority:** P2
- **Requirement:** CART-R3

**Preconditions:**
- Cart contains `SKU-1001` with qty 1

**Steps:**
1. On the cart page, click the **−** (decrease) button

**Expected result:**
- Quantity stays at 1; the − button is disabled
- No API call is sent

## Open questions

- CART-R5 says "cart is kept for a while" — how long exactly?
