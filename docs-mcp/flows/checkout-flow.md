# MCP Checkout Flow Playbook

Use this during Step 2 Exploration when you need to manually navigate to the checkout page via MCP browser tools.

> **Note:** The `checkoutSummaryPage` fixture performs this entire flow automatically. Only use this playbook when you need to inspect the live DOM at a specific point in the flow.

---

## MCP Authentication (for authenticated page exploration)

The checkout flow requires a logged-in user. Before starting the navigation steps below, register a fresh test user:

```
mcp__playwright__browser_navigate({ url: "http://localhost:8080/en/login?back=my-account" })
// Fill email in "Create an account" form → click "Create an account"
// Registration form appears — fill: First name, Last name, Phone, Password → click "Register"
// Lands on /en/my-account — MCP session is now authenticated
```

Use any unique email (e.g. `explore-<timestamp>@test.com`). These are disposable test accounts.

---

## Known Widget Behaviours (prevents re-discovery)

| Widget | How to interact |
|--------|----------------|
| **Hotel dropdown (Chosen.js)** | Click `#id_hotel_button_chosen .chosen-single` to open; then click the hotel option inside `.chosen-results` |
| **Datepicker** | Click `#daterange_value` (a `<div>`, not `<input>`); pick `.day.toMonth.valid` cells; use `.first()` guard when two months render side-by-side |
| **Occupancy button** | `[data-testid="occupancy-button"]` scoped to first `[data-testid="room-card"]` |
| **Occupancy Done** | `[data-testid="occupancy-submit"]` scoped to first card |
| **Book Now** | `[data-testid="book-now"]` scoped to first card |
| **Cart success modal** | `[data-testid="layer-cart-room-added"]` — wait for it after booking |
| **Proceed to checkout (modal)** | `[data-testid="layer-cart-checkout"]` |
| **Checkout page anchor** | `[data-testid="shopping-cart-header"]` — visible when Rooms & Price Summary loads |
| **User dropdown** | `#user_info_acc` to open; `.header_user_info a[title="Log me out"]` to sign out |

---

## Full MCP Navigation: Homepage → Checkout

### Step 1 — Open the homepage

```
mcp__playwright__browser_navigate({ url: "http://localhost:8080/en/" })
mcp__playwright__browser_snapshot()
```

---

### Step 2 — Select hotel (Chosen.js dropdown)

```
mcp__playwright__browser_click({ ref: <#id_hotel_button_chosen .chosen-single> })
mcp__playwright__browser_snapshot()    // dropdown options are now visible
mcp__playwright__browser_click({ ref: <option "The Hotel Prime" inside .chosen-results> })
```

---

### Step 3 — Pick check-in and check-out dates

```
mcp__playwright__browser_click({ ref: <#daterange_value> })
mcp__playwright__browser_snapshot()    // datepicker calendar is visible

// Click check-in day — use .first() when two calendar months render side-by-side
mcp__playwright__browser_click({ ref: <.day.toMonth.valid cell matching check-in day> })

// Click check-out day
mcp__playwright__browser_click({ ref: <.day.toMonth.valid cell matching check-out day> })
```

Rule: always pick future dates (today + 1 through today + 6 is a safe range). If check-in and check-out span a month boundary, click the forward arrow (`.icon.icon-angle-right`) in the datepicker to navigate to the next month before selecting the check-out day.

---

### Step 4 — Submit the search

```
mcp__playwright__browser_click({ ref: <Search Rooms button> })
mcp__playwright__browser_wait_for({ text: "General Rooms" })    // results loaded
mcp__playwright__browser_snapshot()
```

If results show "no rooms available" for the selected dates, adjust the date range and retry.

---

### Step 5 — Open occupancy selector and confirm

```
mcp__playwright__browser_click({ ref: <[data-testid="occupancy-button"] on first card> })
mcp__playwright__browser_snapshot()    // occupancy panel is open

// Optionally increment adults here if the scenario requires it
// mcp__playwright__browser_click({ ref: <[data-testid="occupancy-quantity-up"]> })

mcp__playwright__browser_click({ ref: <[data-testid="occupancy-submit"]> })
```

---

### Step 6 — Book the first room

```
mcp__playwright__browser_click({ ref: <[data-testid="book-now"] on first card> })
mcp__playwright__browser_wait_for({ text: "Room successfully added to your cart" })
mcp__playwright__browser_snapshot()    // cart success modal is visible
```

---

### Step 7 — Proceed to checkout

```
mcp__playwright__browser_click({ ref: <[data-testid="layer-cart-checkout"]> })
mcp__playwright__browser_wait_for({ text: "Rooms & Price Summary" })
mcp__playwright__browser_snapshot()    // now on checkout page
```

The agent is now on `/en/quick-order` with `[data-testid="shopping-cart-header"]` visible.

### What's visible on the checkout page

**Left panel — room details:**
- Room name: `[data-testid="cart-room-name"]` — plain text, e.g. "General Rooms" (nested remove-link icon has no text, so textContent is clean)
- Hotel address: `.hotel-location` — e.g. "The Hotel Prime, Demo City, Poland, 16-226"
- Check-in / check-out / occupancy info blocks

**Right panel — cost summary:**
- Total rooms cost — plain `<p>`, no data-testid
- Convenience Fees — plain `<p>`, no data-testid
- Total tax — `p.cart_total_tax` (unique class)
- **Total: `[data-testid="cart-final-total"] .cart_total_values`** ← use this

**Checkout accordion steps:**
1. Rooms & Price Summary → `[data-testid="proceed-to-checkout"]` → Guest Info opens
2. Guest Information → `[data-testid="proceed-to-payment"]` → Payment opens
3. Payment Information → `input#cgv` ToS checkbox + `p.warning` error shown **immediately** on load

---

## Checkout Page — Known Locators

All locators below are verified unique (count = 1) on `/en/quick-order`.

| Element | Locator | Notes |
|---------|---------|-------|
| Page anchor | `[data-testid="shopping-cart-header"]` | uniqueElement for CheckoutPage PO |
| Room name in cart | `[data-testid="cart-room-name"]` | plain text e.g. "General Rooms"; nested remove icon has no text |
| Hotel address | `.hotel-location` | e.g. "The Hotel Prime, Demo City, Poland, 16-226" |
| Total price | `[data-testid="cart-final-total"] .cart_total_values` | trimmed text, e.g. "7 995,00 zł" |
| Right-panel: Total tax | `.cart_total_tax .cart_total_values` | unique class; no data-testid on individual cost rows |
| Proceed → Guest Info | `[data-testid="proceed-to-checkout"]` | first Proceed button |
| Proceed → Payment | `[data-testid="proceed-to-payment"]` | second Proceed button |
| Terms of Service checkbox | `input#cgv` | check with `.check()` |
| ToS error message | `p.warning` | **Appears immediately when Payment step loads — no button click needed to trigger.** Removed from DOM entirely (count = 0) after ToS checked → assert with `not.toBeAttached()` |
| Pay by Bank Wire | `[data-testid="bankwire-payment"]` | visible only after ToS checked |

---

## Troubleshooting

| Symptom | Fix |
|---------|-----|
| Room unavailable error on checkout | Room dates conflict — clear cart, retry with different dates |
| Datepicker cell not clickable | Use `.first()` on the day cell to avoid dual-month duplicate |
| Cart modal doesn't appear | Wait explicitly: `mcp__playwright__browser_wait_for({ text: "Room successfully added" })` |
| Chosen.js dropdown doesn't open | Click `.chosen-single` not the parent container |
| Snapshot shows login page | Session not authenticated — register a fresh user via the MCP Authentication steps at the top of this file |
| ToS error doesn't appear after clicking a button | `p.warning` is shown immediately when the Payment step loads — no button click is needed. `proceedToPaymentStep()` is sufficient; then assert the error directly |
