---
name: develop-test-mcp
description: >
  Develop a Playwright automated test using Playwright MCP browser tools for live element exploration.
  Use when the user provides a test case, asks to automate a scenario, or says "write a test for X".
  Requires Playwright MCP server to be running (configured in .mcp.json).
allowed-tools: Read, Grep, Glob, Write, Edit, Bash(pnpm:*), Bash(npx playwright:*), Bash(git:*), mcp__playwright__browser_navigate, mcp__playwright__browser_snapshot, mcp__playwright__browser_click, mcp__playwright__browser_fill, mcp__playwright__browser_select_option, mcp__playwright__browser_evaluate, mcp__playwright__browser_screenshot, mcp__playwright__browser_wait_for, mcp__playwright__browser_type, mcp__playwright__browser_hover, mcp__playwright__browser_close
---

# Develop Test — MCP Edition

---

## 🔴 Hard Prohibitions (always enforced — no exceptions)

- **NEVER read `.tpl` Smarty template files** — the rendered DOM is the source of truth. Use MCP `snapshot` / `evaluate` on the live page.
- **NEVER navigate directly to deep pages via constructed URLs** — always walk the full UI flow from the homepage or login page.
- **NEVER write to `docs/maps/page-object-map.md`** — the `docs/` folder is deleted. The only map is `docs-mcp/maps/page-object-map.md`.

---

## Pre-Analysis Gate

MEMORY.md is auto-injected into your system prompt. If it already contains BASE_URL, grouping strategy, and scenario → fixture mappings → **skip the 3 gate questions entirely** and use those defaults.

Only ask if those defaults are missing from MEMORY.md.

---

## Step 1 — Analysis

**Goal:** Understand intent, find what already exists, avoid duplication.

### 1.1 Read the Page Object Map (only mandatory external read)

```
Read docs-mcp/maps/page-object-map.md
```

- Use the **Scenario → Spec File + Fixture** table at the top to pick the correct file and fixture.
- Scan existing PO methods and locators — extend, never duplicate.

### 1.2 Parse intent

From the scenario, identify: pages involved · actions to perform · assertions to make.

### 1.3 Duplicate Gate

Search for a test with the exact scenario name. If found:
- Report the file path and test name.
- Ask: "This scenario appears to be automated in `<path>`. Should I (a) run it as validation, (b) skip it, or (c) treat this as a new/updated scenario?"
- Do NOT proceed silently.

---

> ✅ **Step 1 checkpoint — before moving to Step 2:**
> I know the spec file, fixture name, and which POs/methods already exist.
> No test with this name exists (or user has confirmed how to proceed).

---

## Step 2 — Exploration (MCP Browser)

**Goal:** Verify every new locator against the live DOM.

> Skip this step only if ALL required locators already exist in the codebase.
> For checkout page locators → **check `docs-mcp/flows/checkout-flow.md` "Checkout Page — Known Locators" table first** — locators listed there are pre-verified (count = 1) and do not need re-verification via MCP.
> For the full navigation flow → see [`docs-mcp/flows/checkout-flow.md`](../../docs-mcp/flows/checkout-flow.md) for proven MCP steps and authentication setup.

### MCP tools

| Tool | Purpose |
|------|---------|
| `mcp__playwright__browser_navigate` | Open a URL |
| `mcp__playwright__browser_snapshot` | Read accessibility tree / page structure |
| `mcp__playwright__browser_click` | Click a button, link, or element |
| `mcp__playwright__browser_fill` | Type into a text input |
| `mcp__playwright__browser_type` | Type character-by-character (triggers key handlers) |
| `mcp__playwright__browser_select_option` | Select a `<select>` dropdown option |
| `mcp__playwright__browser_evaluate` | Run JS: extract HTML, count elements |
| `mcp__playwright__browser_wait_for` | Wait for text to appear or disappear |
| `mcp__playwright__browser_screenshot` | Visual confirmation |

### Mandatory locator verification sequence

Every new locator must pass all four steps before use:

```
1. mcp__playwright__browser_navigate   → open the target page (via full UI flow)
2. mcp__playwright__browser_snapshot   → identify the element in the accessibility tree
3. mcp__playwright__browser_evaluate   → document.querySelector('<selector>').outerHTML  (inspect HTML)
4. mcp__playwright__browser_evaluate   → document.querySelectorAll('<selector>').length   (MUST = 1)
```

Result `1` → ✅ locator is valid. Result `0` or `2+` → ❌ pick a different locator.

---

> ✅ **Step 2 checkpoint — before moving to Step 3:**
> Every new locator has been verified unique (count = 1) in the live DOM.
> I have not read any `.tpl` files. I have not shortcut via a direct URL.

---

## Step 3 — Development

**Goal:** Write or extend Page Objects, write the spec, update the map.

### Test naming

The test name MUST be a verbatim copy of the scenario heading from `docs-old/refined-specs.md`:

```typescript
// heading: ### 6. Portal: Checkout: Cart summary: Correct items and costs displayed
test('Portal: Checkout: Cart summary: Correct items and costs displayed', async ({ ... }) => {
```

### Locator priority (most → least stable)

1. `getByTestId('...')` — if `data-testid` exists
2. `locator('#unique-id')` — stable unique ID
3. `getByRole('button', { name: '...' })` — semantic role + name
4. `locator('[aria-label="..."]')` — ARIA label
5. `locator('[name="..."]')` — unique name attribute
6. `locator('.stable-class')` — scoped class (verify unique = 1 first)

### Page Object rules (8 critical)

1. **`private readonly` fields only** — no `get` getters, no inline locator creation inside methods
2. **`.describe('Label')`** on every locator — no exceptions
3. **`@step('Human readable description')`** on every public method
4. **Check `page-object-map.md` first** — extend existing PO, never create a duplicate
5. **One PO per URL** — verify in the map before creating a new file
6. **No unused methods** — if a method is not called in any spec, remove it
7. **PO-specific string constants** in `UPPER_SNAKE_CASE` before the class declaration
8. **Dynamic locators** → arrow function class field:
   `private readonly item = (id: string) => this.page.locator(\`[data-id="${id}"]\`)`

### `@step` decorator syntax

```typescript
import { step } from '@utils/decorators';

@step('Assert cart shows the expected room name')
async expectRoomName(expectedName: string): Promise<void> {
  await expect(this.cartRoomName).toContainText(expectedName);
}
```

### Fixture usage

```typescript
// pages — unauthenticated flows (search, room page, auth)
test('...', async ({ pages }) => {
  await pages.homePage.open();
});

// checkoutSummaryPage — registered user already at Rooms & Price Summary
// Use for Scenarios 6, 7, 8, 9
test('...', async ({ checkoutSummaryPage }) => {
  const { authPage, roomName, totalPrice } = checkoutSummaryPage;
  await authPage.checkoutPage.someMethod();
});
```

Do NOT register a user manually in the test body. Do NOT create a new fixture without engineer approval.

### Path aliases (always use — never relative imports)

```typescript
import { BasePage } from '@pages/base.page';
import { test }     from '@fixtures/index';
import { HOTELS }   from '@constants/hotels';
import { step }     from '@utils/decorators';
import { getSearchDates } from '@utils/dates';
```

### Registry update (MANDATORY after any PO change)

```
Edit docs-mcp/maps/page-object-map.md
```

Add or update: class name, URL, new methods (parameters, return type, description), new locators (selector, description).

---

> ✅ **Step 3 checkpoint — before moving to Step 4:**
> - Every locator has `.describe()`
> - Every public method has `@step()`
> - No unused locators or methods
> - `docs-mcp/maps/page-object-map.md` is updated
> - No `any` types, no relative imports, no `waitForTimeout`

---

## Step 4 — Validation

**Goal:** Confirm the test runs correctly and reliably.

### Run the test

```bash
BASE_URL=http://localhost:8080 pnpm exec playwright test <path/to/spec.ts> --reporter=html
```

Run **twice** — must pass both times with no retries.

### Troubleshoot failures

If a locator fails, re-investigate via MCP (do not guess):

```
mcp__playwright__browser_navigate  → open the failing page (via full UI flow)
mcp__playwright__browser_snapshot  → re-read the current DOM
mcp__playwright__browser_evaluate  → document.querySelectorAll('<selector>').length
```

Common causes: locator no longer unique · element not yet rendered · dynamic DOM requiring interaction first.

---

> ✅ **Done criteria — task is complete when all boxes are checked:**
> - [ ] Passes on run 1 (no retry)
> - [ ] Passes on run 2 (no flakiness)
> - [ ] `docs-mcp/maps/page-object-map.md` updated
> - [ ] No `any` types · no `waitForTimeout` · no relative imports
> - [ ] All locators have `.describe()`
> - [ ] All public methods have `@step()`
> - [ ] No unused locators or methods

---

## DO NOT

- `any` types
- `page.waitForTimeout()`
- Relative imports (`../../../`)
- `get myLocator()` getter methods in POs
- Create locators inside method bodies
- Add methods not called in any spec
- Create a new PO file if one already exists for that URL
- Skip `.describe()` on any locator
- Skip `@step()` on any public method
- Read `.tpl` Smarty template files
- Navigate directly to deep pages via constructed URL

---

## Documentation Map

Read these only when the rules above are insufficient for the situation.

| Topic | File |
|-------|------|
| PO registry + Scenario → Fixture map | [`docs-mcp/maps/page-object-map.md`](../../docs-mcp/maps/page-object-map.md) |
| MCP checkout navigation playbook | [`docs-mcp/flows/checkout-flow.md`](../../docs-mcp/flows/checkout-flow.md) |
| Full coding standards | [`docs-mcp/coding-standards.md`](../../docs-mcp/coding-standards.md) |
| Locator extraction — 6-step detail | [`docs-mcp/patterns/locators.md`](../../docs-mcp/patterns/locators.md) |
| Page Object rules — full detail | [`docs-mcp/patterns/page-object.md`](../../docs-mcp/patterns/page-object.md) |
| Element interactions & BasePage | [`docs-mcp/patterns/elements.md`](../../docs-mcp/patterns/elements.md) |
| Test data management | [`docs-mcp/patterns/test-data-management.md`](../../docs-mcp/patterns/test-data-management.md) |
| Reporting / troubleshooting | [`docs-mcp/reporting.md`](../../docs-mcp/reporting.md) |
| Tech stack & folder structure | [`docs-mcp/tech-stack.md`](../../docs-mcp/tech-stack.md) |
