# Agent Quick Reference

> Single-page reference — replaces reading `coding-standards.md`, `patterns/page-object.md`, `patterns/elements.md`, `patterns/test-data-management.md`.
> Full detail still available in those files if needed.

---

## Test Naming

Test title MUST be a verbatim copy of the scenario heading from `docs-old/refined-specs.md`:

```typescript
test('Portal: Checkout: Cart summary: Correct items and costs displayed', async ({ ... }) => {
```

---

## Locator Priority (most stable → least)

1. `getByTestId('...')` — if `data-testid` exists
2. `locator('#unique-id')` — stable unique ID
3. `getByRole('button', { name: '...' })` — semantic role + name
4. `locator('[aria-label="..."]')` — ARIA label
5. `locator('[name="..."]')` — unique attribute
6. `locator('.stable-class')` — scoped class (verify unique = 1 first)

---

## Mandatory Locator Verification

Before adding ANY new locator:
```
1. mcp_playwright_browser_navigate  → open target page
2. mcp_playwright_browser_snapshot  → identify element
3. mcp_playwright_browser_evaluate  → document.querySelectorAll('<selector>').length
   → must return exactly 1 ✅
```

---

## Page Object Rules (critical 8)

1. **`private readonly` fields only** — no `get` getters, no inline locator creation in methods
2. **`.describe('Label')`** on every locator — no exceptions
3. **`@step('Human readable description')`** on every public method
4. **Check `page-object-map.md` first** — extend existing PO, never duplicate
5. **One PO per URL** — verify in map before creating a new file
6. **No unused methods** — if not called in a spec, remove it
7. **Constants before the class** in `UPPER_SNAKE_CASE` for PO-specific strings
8. **Dynamic locators** → arrow function class field: `private readonly item = (id: string) => this.page.locator(...)`

---

## `@step` Decorator Syntax

```typescript
import { step } from '@utils/decorators';

@step('Assert cart shows the expected room name')
async expectRoomName(expectedName: string): Promise<void> {
  await expect(this.cartRoomName).toContainText(expectedName);
}
```

---

## Fixture Usage

```typescript
// pages — unauthenticated flows (search, room page)
test('...', async ({ pages }) => {
  await pages.homePage.open();
});

// checkoutSummaryPage — registered user already at Rooms & Price Summary
// Use for Scenarios 6, 7, 8, 9
test('...', async ({ checkoutSummaryPage }) => {
  const { authPage, roomName, totalPrice } = checkoutSummaryPage;
  await authPage.checkoutPage.someAssertionMethod();
});
```

---

## Path Aliases

```typescript
import { BasePage } from '@pages/base.page';
import { test } from '@fixtures/index';
import { HOTELS } from '@constants/hotels';
import { getSearchDates } from '@utils/dates';
import { step } from '@utils/decorators';
```

---

## Validation Command

```bash
BASE_URL=http://localhost:8080 pnpm exec playwright test <path/to/spec.ts> --reporter=html
```

Run twice — must pass both times (no flakiness).

---

## DO NOT

- `any` types
- `page.waitForTimeout()`
- Relative imports (`../../../`)
- `get myLocator()` getter methods
- Create locators inside method bodies
- Add methods not used in a spec
- Create a new PO file if one exists for that URL
- Skip `.describe()` on any locator
- Skip `@step()` on any public method
