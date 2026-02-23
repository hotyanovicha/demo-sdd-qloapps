---
name: add-testid
description: >
  Add data-testid attributes to QloApps Smarty templates and rebuild the app.
  Use when the user asks to add test IDs, add data-testid, or improve element locators in templates.
---

# Adding data-testid Attributes

Follow this workflow to add `data-testid` attributes to QloApps Smarty templates and make them available in the running app.

---

## Step 1 — Identify the Target Element

### 1.1 Find the template file

QloApps uses Smarty `.tpl` templates. Templates live in two main locations:

| Location | Contains |
|----------|----------|
| `QloApps/themes/hotel-reservation-theme/` | Theme templates (pages, partials, cart, checkout, confirmation) |
| `QloApps/modules/*/views/templates/hook/` | Module-specific templates (search form, blockcart, bankwire, etc.) |

Search for the element you need by text content, CSS class, or existing ID:
```bash
grep -rn "Search Rooms\|id=\"search_room_submit\"" QloApps/ --include="*.tpl"
```

### 1.2 Choose the correct element

> [!IMPORTANT]
> Always place `data-testid` on the **interactive or semantic element itself**, not on a wrapper `<div>`.

**Rules:**
- **Buttons / Links** → place on the `<button>` or `<a>`, not on a wrapping `<span>` or `<div>`
- **Inputs / Selects** → place on the `<input>`, `<select>`, or `<textarea>`, not on a form-group wrapper
- **Text content** → place on the element that directly contains the text (`<p>`, `<span>`, `<h2>`)
- **Containers** → only use on a container `<div>` when you need to scope a group of related elements (e.g., a room card, a payment methods list)

### 1.3 Naming convention

Use lowercase kebab-case names that describe what the element **is**, not what test uses it:

```
✅  data-testid="search-room-submit"
✅  data-testid="hotel-selector"
✅  data-testid="book-now"
❌  data-testid="tc3-search-button"    (references a test case)
❌  data-testid="btn1"                 (not descriptive)
```

---

## Step 2 — Add the Attribute

### 2.1 Edit the template

Add `data-testid="your-name"` directly in the HTML tag:

```diff
-<button type="submit" class="btn btn-primary" name="search_room_submit" id="search_room_submit">
+<button type="submit" class="btn btn-primary" name="search_room_submit" id="search_room_submit" data-testid="search-room-submit">
```

### 2.2 Watch for conditional branches

Smarty templates often have `{if}...{else}...{/if}` or `{foreach}` blocks that render the **same element differently** depending on state. You must add the `data-testid` in **all branches** so the attribute is always present.

Example — `occupancy_field.tpl` has a `{foreach}` branch (for existing occupancies) and an `{else}` branch (default state). Both need the test ID:

```smarty
{if isset($occupancies) && $occupancies}
    {foreach ...}
        <div class="occupancy_count pull-left" data-testid="occupancy-adult-count">
    {/foreach}
{else}
    <div class="occupancy_count pull-left" data-testid="occupancy-adult-count">
{/if}
```

### 2.3 Avoid duplicates across files

Some templates are `{include}`-d into others (e.g., `occupancy_field.tpl` is included in both `searchForm.tpl` and `room_type_list.tpl`). Don't add the same `data-testid` in the parent **and** the included partial — put it in one place only.

---

## Step 3 — Rebuild and Clear Cache

The templates are **baked into the Docker image** (not volume-mounted), so you must rebuild and clear the Smarty cache.

### 3.1 Rebuild the app container

```bash
docker compose up -d --build app
```

### 3.2 Clear the Smarty template cache

// turbo
```bash
docker exec qloapps_build_app bash -c "rm -rf /var/www/html/cache/smarty/compile/* /var/www/html/cache/smarty/cache/*"
```

> [!CAUTION]
> If you skip the cache clear, the old compiled templates will still be served even after a rebuild.

---

## Step 4 — Verify

### 4.1 Check in browser via JavaScript

Open the page in a browser and run in DevTools console (or via Playwright):

```js
document.querySelector('[data-testid="your-name"]')
// Should return the correct element, not null
```

### 4.2 Verify the tag is correct

```js
const el = document.querySelector('[data-testid="your-name"]');
console.log(el.tagName); // Should be BUTTON, SELECT, A, etc. — not DIV (unless intentional)
```

---

## Quick Reference — Existing test IDs

| test ID | File | Element |
|---------|------|---------|
| `hotel-selector` | searchForm.tpl | `<select>` |
| `search-room-submit` | searchForm.tpl | `<button>` |
| `occupancy-button` | occupancy_field.tpl | `<button>` |
| `occupancy-adult-count` | occupancy_field.tpl | `<div>` (count display) |
| `occupancy-quantity-up` | occupancy_field.tpl | `<a>` |
| `occupancy-submit` | occupancy_field.tpl | `<button>` |
| `room-card` | room_type_list.tpl | `<div>` (container) |
| `room-name` | room_type_list.tpl | `<p>` |
| `book-now` | room_type_list.tpl | `<a>` |
| `layer-cart-room-added` | blockcart.tpl | `<h2>` |
| `layer-cart-checkout` | blockcart.tpl | `<a>` |
| `cart-room-name` | shopping-cart-detail.tpl | `<p>` |
| `proceed-to-checkout` | shopping-cart-detail.tpl | `<a>` |
| `shopping-cart-header` | order-opc.tpl | `<h5>` |
| `proceed-to-payment` | order-opc.tpl | `<a>` |
| `payment-methods` | order-payment-classic.tpl | `<div>` (container) |
| `bankwire-payment` | payment.tpl | `<a>` |
| `booking-success-message` | payment_return.tpl | `<p>` |
| `payment-error-message` | payment_return.tpl | `<p>` |
| `cart-final-total` | cart-total-block.tpl | `<p>` |
| `cart-partial-total` | cart-total-block.tpl | `<p>` |
| `confirmation-room-name` | order-confirmation.tpl | `<p>` |
| `payment-method` | order-confirmation.tpl | `<div>` |
| `order-status` | order-confirmation.tpl | `<div>` |
| `logout-link` | blockuserinfo.tpl | `<a>` |
| `bookings-link` | my-account.tpl | `<a>` |
| `credit-slips-link` | my-account.tpl | `<a>` |
