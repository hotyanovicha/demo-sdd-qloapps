# MCP Checkout Flow Playbook

Use this during Step 2 Exploration when you need to manually navigate to the checkout page via MCP browser tools.

> **Note:** The `checkoutSummaryPage` fixture performs this entire flow automatically. Only use this playbook when you need to inspect the live DOM at a specific point in the flow.

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

Rule: always pick future dates (today + 1 through today + 6 is a safe range).

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

---

## Checkout Page — Known Locators

All locators below are verified unique (count = 1) on `/en/quick-order`.

| Element | Locator | Notes |
|---------|---------|-------|
| Page anchor | `[data-testid="shopping-cart-header"]` | uniqueElement for CheckoutPage PO |
| Room name in cart | `[data-testid="cart-room-name"]` | returns plain text, e.g. "General Rooms" |
| Total price | `[data-testid="cart-final-total"] .cart_total_values` | trimmed text, e.g. "7 995,00 zł" |
| Proceed → Guest Info | `[data-testid="proceed-to-checkout"]` | first Proceed button |
| Proceed → Payment | `[data-testid="proceed-to-payment"]` | second Proceed button |
| Terms of Service checkbox | `input#cgv` | check with `.check()` |
| Pay by Bank Wire | `[data-testid="bankwire-payment"]` | visible only after ToS checked |

---

## Troubleshooting

| Symptom | Fix |
|---------|-----|
| Room unavailable error on checkout | Room dates conflict — clear cart, retry with different dates |
| Datepicker cell not clickable | Use `.first()` on the day cell to avoid dual-month duplicate |
| Cart modal doesn't appear | Wait explicitly: `mcp__playwright__browser_wait_for({ text: "Room successfully added" })` |
| Chosen.js dropdown doesn't open | Click `.chosen-single` not the parent container |
| Snapshot shows login page | Session not authenticated — this playbook is for guest navigation; use fixture for auth |
