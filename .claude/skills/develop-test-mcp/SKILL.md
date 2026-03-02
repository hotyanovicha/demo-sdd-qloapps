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

## 🔴 Hard Prohibitions

- **NEVER read `.tpl` Smarty template files** — use MCP `snapshot` / `evaluate` on the live page.
- **NEVER navigate directly to deep pages via constructed URLs** — walk the full UI flow from the homepage or login page.

---

## Step 1 — Analysis

**Goal:** Understand intent, find what already exists, avoid duplication.

Read `docs-mcp/maps/page-object-map.md`:
- Pick the correct spec file and fixture from the Scenario → Spec File table.
- Scan existing PO methods and locators — extend, never duplicate.

Identify from the scenario: pages involved · actions · assertions.

**Duplicate Gate:** Search for a test with the exact scenario name. If found, report the file path and ask the user how to proceed — do NOT continue silently.

> ✅ **Step 1 checkpoint — before moving to Step 2:**
> I know the spec file, fixture name, and which POs/methods already exist.
> No test with this name exists (or user has confirmed how to proceed).

---

## Step 2 — Exploration (MCP Browser)

**Goal:** Verify every new locator against the live DOM.

> Skip only if ALL required locators already exist in the codebase.
> See `docs-mcp/flows/checkout-flow.md` for proven navigation steps and authentication setup.

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

### Locator verification sequence (mandatory for every new locator)

```
1. navigate   → open the target page via full UI flow
2. snapshot   → identify the element in the accessibility tree
3. evaluate   → document.querySelector('<selector>').outerHTML
4. evaluate   → document.querySelectorAll('<selector>').length  ← MUST = 1
```

Count `1` → ✅ valid. Count `0` or `2+` → ❌ pick a different locator.

> ✅ **Step 2 checkpoint — before moving to Step 3:**
> Every new locator has been verified unique (count = 1) in the live DOM.
> I have not read any `.tpl` files. I have not shortcut via a direct URL.

---

## Step 3 — Development

**Goal:** Write or extend Page Objects, write the spec, update the map.

### Test naming

Verbatim copy of the scenario heading from `docs-old/refined-specs.md`:

```typescript
test('Portal: Section: Scenario title', async ({ fixture }) => {
```

### Test body rules

1. **No `expect()` in the test body** — all assertions belong in Page Object methods with `@step()`
2. **No hardcoded strings or values** — extract all test data to `src/ui/test-data/constants/*.ts`
3. **No manual user registration** — use provided fixtures; never create a new fixture without engineer approval

### Locator priority (most → least stable)

1. `getByTestId('...')` — if `data-testid` exists
2. `locator('#unique-id')` — stable unique ID
3. `getByRole('button', { name: '...' })` — semantic role + name
4. `locator('[aria-label="..."]')` — ARIA label
5. `locator('[name="..."]')` — unique name attribute
6. `locator('.stable-class')` — scoped class (verify unique = 1 first)

### Page Object rules

1. **`private readonly` fields only** — no `get` getters, no inline locator creation inside methods
2. **`.describe('Label')`** on every locator — no exceptions
3. **`@step('...')`** on every public method — no exceptions
4. **One PO per URL** — check `page-object-map.md` before creating a new file; extend existing, never duplicate
5. **No unused methods** — remove any method not called in a spec
6. **PO-specific string constants** in `UPPER_SNAKE_CASE` before the class declaration
7. **Dynamic locators** → arrow function field: `private readonly item = (id: string) => this.page.locator(\`...\`)`

### `@step` decorator syntax

```typescript
import { step } from '@utils/decorators';

@step('Assert heading is visible')
async expectHeadingVisible(): Promise<void> {
  await expect(this.heading).toBeVisible();
}
```

### Fixture usage

```typescript
// pages — unauthenticated flows
test('...', async ({ pages }) => { await pages.homePage.open(); });

// checkoutSummaryPage — authenticated user already at Rooms & Price Summary
test('...', async ({ checkoutSummaryPage }) => {
  const { authPage, roomName, totalPrice } = checkoutSummaryPage;
});
```

### Path aliases (never relative imports)

```typescript
import { BasePage }       from '@pages/base.page';
import { test }           from '@fixtures/index';
import { HOTELS }         from '@constants/hotels';
import { step }           from '@utils/decorators';
import { getSearchDates } from '@utils/dates';
```

### Registry update (MANDATORY after any PO change)

Edit `docs-mcp/maps/page-object-map.md` — add or update: class, URL, methods (params, return type, description), locators (selector, description).

> ✅ **Step 3 checkpoint — before moving to Step 4:**
> - Every locator has `.describe()`
> - Every public method has `@step()`
> - No unused locators or methods
> - `docs-mcp/maps/page-object-map.md` is updated
> - No `any` types, no relative imports, no `waitForTimeout`

---

## Step 4 — Validation

**Goal:** Confirm the test runs correctly and reliably.

```bash
BASE_URL=http://localhost:8080 pnpm exec playwright test <path/to/spec.ts> --reporter=html
```

Run **twice** — must pass both times with no retries.

If a locator fails, re-investigate via MCP (navigate → snapshot → evaluate count). Do not guess.

---

## ✅ Done Criteria

- [ ] Passes run 1 (no retry) and run 2 (no flakiness)
- [ ] `docs-mcp/maps/page-object-map.md` updated
- [ ] No `any` · no `waitForTimeout` · no relative imports
- [ ] All locators have `.describe()`
- [ ] All public methods have `@step()`
- [ ] No unused locators or methods
- [ ] No `expect()` in test body — assertions are in PO methods
- [ ] No hardcoded strings in tests — values are in constants

---

## DO NOT

- `any` types
- `page.waitForTimeout()`
- Relative imports
- `get myLocator()` getters in POs
- Locators created inside method bodies
- Methods not called in any spec
- A new PO file when one already exists for that URL
- Missing `.describe()` on any locator
- Missing `@step()` on any public method
- `expect()` in the test body
- Hardcoded strings or values in tests — use constants
- Read `.tpl` files
- Navigate directly to deep pages via constructed URL

---

## Documentation Map

| Topic | File |
|-------|------|
| PO registry + Scenario → Fixture map | `docs-mcp/maps/page-object-map.md` |
| MCP checkout navigation playbook | `docs-mcp/flows/checkout-flow.md` |
| Full coding standards | `docs-mcp/coding-standards.md` |
| Locator extraction — 6-step detail | `docs-mcp/patterns/locators.md` |
| Page Object rules — full detail | `docs-mcp/patterns/page-object.md` |
| Element interactions & BasePage | `docs-mcp/patterns/elements.md` |
| Test data management | `docs-mcp/patterns/test-data-management.md` |
| Reporting / troubleshooting | `docs-mcp/reporting.md` |
| Tech stack & folder structure | `docs-mcp/tech-stack.md` |
