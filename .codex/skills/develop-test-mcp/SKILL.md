---
name: develop-test-mcp
description: >
  Develop a Playwright automated test using Playwright MCP browser tools for
  live element exploration. Use when the user provides a test case, asks to
  automate a scenario, or says "write a test for X". Requires Playwright MCP
  server to be running (configured in .mcp.json).
---

# Develop Test - MCP Edition

## Hard Prohibitions (always enforced, no exceptions)

- NEVER read `.tpl` Smarty template files. Use MCP `snapshot` and `evaluate` on the live page.
- NEVER navigate directly to deep pages via constructed URLs. Walk the full UI flow from the homepage or login page.

## Step 1 - Analysis

Goal: Understand intent, find what already exists, avoid duplication.

### 1.1 Read the Page Object Map (mandatory)

```text
Read docs-mcp/maps/page-object-map.md
```

- Use the Scenario -> Spec File + Fixture table at the top to pick the correct file and fixture.
- Scan existing PO methods and locators. Extend, do not duplicate.

### 1.2 Parse intent

Identify pages involved, actions to perform, and assertions to make.

### 1.3 Duplicate gate

Search for a test with the exact scenario name. If found:
- Report the file path and test name.
- Ask: "This scenario appears to be automated in `<path>`. Should I (a) run it as validation, (b) skip it, or (c) treat this as a new/updated scenario?"
- Do not proceed silently.

Step 1 checkpoint before Step 2:
- Know the spec file, fixture name, and which POs/methods already exist.
- Confirm no test with this name exists, or user has confirmed how to proceed.

## Step 2 - Exploration (MCP Browser)

Goal: Verify every new locator against the live DOM.

Skip this step only if all required locators already exist in the codebase.
For the full navigation flow, see [`docs-mcp/flows/checkout-flow.md`](../../../docs-mcp/flows/checkout-flow.md).

### MCP tools

- `mcp__playwright__browser_navigate`: Open a URL
- `mcp__playwright__browser_snapshot`: Read accessibility tree and page structure
- `mcp__playwright__browser_click`: Click a button, link, or element
- `mcp__playwright__browser_fill`: Type into a text input
- `mcp__playwright__browser_type`: Type character-by-character (triggers key handlers)
- `mcp__playwright__browser_select_option`: Select a `<select>` option
- `mcp__playwright__browser_evaluate`: Run JS to extract HTML and count elements
- `mcp__playwright__browser_wait_for`: Wait for text to appear or disappear
- `mcp__playwright__browser_screenshot`: Visual confirmation

### Mandatory locator verification sequence

Every new locator must pass all four steps before use:

```text
1. mcp__playwright__browser_navigate  -> open the target page (via full UI flow)
2. mcp__playwright__browser_snapshot  -> identify the element in the accessibility tree
3. mcp__playwright__browser_evaluate  -> document.querySelector('<selector>').outerHTML
4. mcp__playwright__browser_evaluate  -> document.querySelectorAll('<selector>').length (MUST = 1)
```

Result `1` means valid locator. Result `0` or `2+` means choose a different locator.

Step 2 checkpoint before Step 3:
- Verify every new locator is unique (`count = 1`) in live DOM.
- Confirm no `.tpl` files were read.
- Confirm no direct deep-link URL shortcuts were used.

## Step 3 - Development

Goal: Write or extend Page Objects, write the spec, and update the map.

### Test naming

Use a verbatim copy of the scenario heading from `docs-old/refined-specs.md`:

```typescript
test('Portal: Checkout: Cart summary: Correct items and costs displayed', async ({ ... }) => {
```

### Locator priority (most to least stable)

1. `getByTestId('...')` if `data-testid` exists
2. `locator('#unique-id')` stable unique ID
3. `getByRole('button', { name: '...' })` semantic role + name
4. `locator('[aria-label="..."]')` ARIA label
5. `locator('[name="..."]')` unique name attribute
6. `locator('.stable-class')` scoped class (verify unique = 1 first)

### Page Object rules (critical)

1. Use `private readonly` fields only. Do not use `get` getters or inline locator creation inside methods.
2. Add `.describe('Label')` on every locator.
3. Add `@step('Human readable description')` on every public method.
4. Check `page-object-map.md` first. Extend existing PO, do not duplicate.
5. Keep one PO per URL. Verify in the map before creating a new file.
6. Remove unused methods.
7. Keep PO-specific string constants in `UPPER_SNAKE_CASE` before class declaration.
8. For dynamic locators, use an arrow-function class field:

```typescript
private readonly item = (id: string) => this.page.locator(`[data-id="${id}"]`)
```

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
// pages - unauthenticated flows (search, room page, auth)
test('...', async ({ pages }) => {
  await pages.homePage.open();
});

// checkoutSummaryPage - registered user already at Rooms & Price Summary
// Use for Scenarios 6, 7, 8, 9
test('...', async ({ checkoutSummaryPage }) => {
  const { authPage, roomName, totalPrice } = checkoutSummaryPage;
  await authPage.checkoutPage.someMethod();
});
```

Do not register a user manually in the test body.
Do not create a new fixture without engineer approval.

### Path aliases

Always use path aliases, never relative imports:

```typescript
import { BasePage } from '@pages/base.page';
import { test } from '@fixtures/index';
import { HOTELS } from '@constants/hotels';
import { step } from '@utils/decorators';
import { getSearchDates } from '@utils/dates';
```

### Registry update (mandatory after any PO change)

```text
Edit docs-mcp/maps/page-object-map.md
```

Add or update class name, URL, new methods (parameters, return type, description), and new locators (selector, description).

Step 3 checkpoint before Step 4:
- Every locator has `.describe()`.
- Every public method has `@step()`.
- No unused locators or methods.
- `docs-mcp/maps/page-object-map.md` updated.
- No `any` types, no relative imports, no `waitForTimeout`.

## Step 4 - Validation

Goal: Confirm the test runs correctly and reliably.

### Run the test

```bash
BASE_URL=http://localhost:8080 pnpm exec playwright test <path/to/spec.ts> --reporter=html
```

Run twice and pass both runs with no retries.

### Troubleshoot failures

If a locator fails, re-investigate via MCP instead of guessing:

```text
mcp__playwright__browser_navigate  -> open the failing page (via full UI flow)
mcp__playwright__browser_snapshot  -> re-read the current DOM
mcp__playwright__browser_evaluate  -> document.querySelectorAll('<selector>').length
```

Common causes: locator is no longer unique, element is not rendered yet, or dynamic DOM requires a prior interaction.

Done criteria:
- Passes run 1 (no retry)
- Passes run 2 (no flakiness)
- `docs-mcp/maps/page-object-map.md` updated
- No `any` types, no `waitForTimeout`, no relative imports
- All locators have `.describe()`
- All public methods have `@step()`
- No unused locators or methods

## Do Not

- Use `any` types
- Use `page.waitForTimeout()`
- Use relative imports like `../../../`
- Use getter locators in POs
- Create locators inside method bodies
- Add methods not called in any spec
- Create a new PO file if one already exists for that URL
- Skip `.describe()` on any locator
- Skip `@step()` on any public method
- Read `.tpl` Smarty template files
- Navigate directly to deep pages via constructed URL

## Documentation Map

Read these only when the rules above are insufficient:

- PO registry + Scenario -> Fixture map: [`docs-mcp/maps/page-object-map.md`](../../../docs-mcp/maps/page-object-map.md)
- MCP checkout navigation playbook: [`docs-mcp/flows/checkout-flow.md`](../../../docs-mcp/flows/checkout-flow.md)
- Full coding standards: [`docs-mcp/coding-standards.md`](../../../docs-mcp/coding-standards.md)
- Locator extraction detail: [`docs-mcp/patterns/locators.md`](../../../docs-mcp/patterns/locators.md)
- Page Object rules detail: [`docs-mcp/patterns/page-object.md`](../../../docs-mcp/patterns/page-object.md)
- Element interactions and BasePage: [`docs-mcp/patterns/elements.md`](../../../docs-mcp/patterns/elements.md)
- Test data management: [`docs-mcp/patterns/test-data-management.md`](../../../docs-mcp/patterns/test-data-management.md)
- Reporting and troubleshooting: [`docs-mcp/reporting.md`](../../../docs-mcp/reporting.md)
- Tech stack and folder structure: [`docs-mcp/tech-stack.md`](../../../docs-mcp/tech-stack.md)
