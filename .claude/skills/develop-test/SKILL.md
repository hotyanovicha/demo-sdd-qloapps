---
name: develop-test
description: >
  Develop a Playwright automated test from a manual test case or Gherkin scenario.
  Use when the user provides a test case, asks to automate a scenario, or says "write a test for X".
allowed-tools: Read, Grep, Glob, Write, Edit, Bash(playwright-cli:*), Bash(pnpm:*), Bash(npx playwright:*), Bash(git:*)
---

# Agentic Test Development

> **NO COPY-PASTE POLICY**: All code snippets in referenced docs are illustrative only.
> Build your own implementation based on the specific application under test.

Follow this 4-step workflow precisely. Each step has mandatory checks — do not skip them.

---

## Step 1 — Analysis

**Goal:** Understand the test intent and identify what already exists.

### 1.1 Read Intent
Parse the user's input (manual test case, Gherkin scenario, or description) and identify:
- The pages / flows involved
- The actions to perform
- The assertions to make

### 1.2 Check Existing Code (MANDATORY — no exceptions)

```bash
# Read the Page Object registry first
Read docs/maps/page-object-map.md
```

Then search the codebase:
```bash
Grep "<PageName|MethodName|keyword>" tests/pages/ --include="*.ts"
Glob "tests/pages/**/*.ts"
Glob "tests/fixtures/**/*.ts"
```

**Decision tree:**
- PO + locator exist → **use them as-is**
- PO exists, method missing → **extend the existing PO** (do NOT create a new one)
- PO does not exist → proceed to Step 2

### 1.3 Verify Fixtures & Utils
Check for existing fixtures and test data utilities:
```bash
Read tests/fixtures/index.ts
Glob "utils/**/*.ts"
```

**Reference:** [`docs/coding-standards.md`](../../docs/coding-standards.md) — DRY principles, search-before-create rules

---

## Step 2 — Exploration (Browser)

**Goal:** Interactively discover and verify element locators in the live application.

> Skip this step only if ALL required locators already exist and are verified in the codebase.

### 2.1 Open the Browser
```
playwright-cli open --url <BASE_URL>
playwright-cli goto <target-page-path>
```

### 2.2 Perform the Workflow Manually
Navigate through the exact test scenario in the live browser. This reveals the real DOM structure.

### 2.3 Extract Locators — 6-Step Process

For each element you need:

1. **Check existing** — search PO files first (`Grep`)
2. **Visual analysis** — `playwright-cli snapshot` to see the structure
3. **HTML extraction** — `playwright-cli eval "document.querySelector('#container').outerHTML"` to see the full DOM
4. **Build options** — create 2–3 candidate locators in priority order:
   - `getByRole('button', { name: 'Log in' })` — BEST
   - `#element-id` — ID selector
   - `[data-testid="submit"]` — data attribute
   - `[aria-label="Search"]` — ARIA
   - `[name="field"]` — unique attribute
   - `.class-name` — last resort
5. **Validate uniqueness** — `playwright-cli eval "document.querySelectorAll('<selector>').length"` — must return exactly `1`
6. **Cross-page check** — verify the locator is not ambiguous when navigating to a different page type

**Reference:** [`docs/patterns/locators.md`](../../docs/patterns/locators.md) — complete 6-step mandatory process with examples

---

## Step 3 — Development

**Goal:** Write the Page Object extensions and the test spec.

### 3.1 Page Object Rules

- One PO per unique URL/page — check `docs/maps/page-object-map.md` first
- Extend `BasePage`; call `super(page)` in constructor
- `protected readonly uniqueElement` (identifies this page)
- `private readonly` for all other locators
- Every locator MUST have `.describe("Human-readable description")`
- Dynamic locators use arrow function class properties
- Method naming conventions:

  | Prefix | Return type | Purpose |
  |--------|------------|---------|
  | `waitFor*` | `Promise<this>` | Wait for condition, enable chaining |
  | `expect*` | `Promise<void>` | Thin Playwright `expect` wrapper |
  | `assert*` | `Promise<void>` | Custom business-logic assertion |
  | `is*` / `has*` | `Promise<boolean>` | Query element state |
  | `get*` | `Promise<string \| number \| …>` | Extract a value |
  | verb (action) | `Promise<void>` | Describe user intent |

- Use path aliases (`@pages/*`, `@fixtures`, `@utils/*`) — never relative imports
- No `page.waitForTimeout()` — use Playwright auto-waiting
- No hardcoded credentials — read from `@utils/secrets`

**Reference:** [`docs/patterns/page-object.md`](../../docs/patterns/page-object.md) — 20 rules with examples

### 3.2 Element Interactions

- Direct Playwright API for interactions: `click()`, `fill()`, `hover()`
- Use `BasePage` wrapper methods for state assertions: `elementToBeVisible()`, `elementToHaveText()`, etc.
- Prefer `getByRole` > `getByText` > `getByTestId` > CSS

**Reference:** [`docs/patterns/elements.md`](../../docs/patterns/elements.md) — BasePage methods, locator priority order

### 3.3 Test Data

- Use `TestDataGenerator` (Faker.js) for **unique/random** data (usernames, IDs, descriptions)
- Use `TestDataProvider` (static JSON) for **repeatable** data (valid entities that must exist)
- Read credentials at **test level** via `@utils/secrets` — never inside POMs
- Extract magic values to named `UPPER_SNAKE_CASE` constants at the top of the PO file

**Reference:** [`docs/patterns/test-data-management.md`](../../docs/patterns/test-data-management.md) — utils architecture, random vs static rules

### 3.4 Spec File

```typescript
// Naming: kebab-case, .spec.ts suffix
// Test names: "should [outcome] when [scenario]"
test("should [outcome] when [scenario]", async ({ page, <fixture> }) => {
  // Preconditions (if reusable → move to beforeEach)
  // Actions via POM methods
  // Assertions (test-specific ones go here; shared ones go in POM)
});
```

- Use existing Playwright fixtures for auth and page setup
- Do NOT create new fixtures without explicit engineer approval
- No `page.goto()` in tests — use POM `navigate()` method
- `@step` decorators on PO methods to structure Playwright HTML reports

**Reference:** [`docs/coding-standards.md`](../../docs/coding-standards.md) — complete rules, anti-patterns, import standards

### 3.5 Update the Registry (MANDATORY)

After writing or extending any Page Object:
```bash
Edit docs/maps/page-object-map.md
# Add: class name, URL, key methods, locator descriptions
```

---

## Step 4 — Validation

**Goal:** Confirm the test runs correctly and reliably.

### 4.1 Run the Test
```bash
BASE_URL=<env-url> pnpm exec playwright test <path/to/spec.ts> --reporter=html
```

Or with a named environment:
```bash
BASE_URL=http://localhost:8080 pnpm exec playwright test <path/to/spec.ts> --reporter=html
```

### 4.2 Troubleshoot Failures

If the test fails, diagnose using:
- **Playwright HTML Reporter** — step-by-step trace with screenshots
- **Console output** — error messages and stack traces
- **Playwright traces** — `playwright-cli` session for live re-investigation

Common failure causes:
- Locator no longer unique → re-verify with `playwright-cli`
- Timing issue → replace `waitForTimeout` with a proper wait condition
- Wrong assertion → verify element state with snapshot first
- Auth failure → check fixture and secrets configuration

### 4.3 Done Criteria

The task is complete when:
- [ ] Test passes on first run (no retry needed)
- [ ] Test passes on a second consecutive run (no flakiness)
- [ ] `docs/maps/page-object-map.md` is updated
- [ ] No hardcoded credentials, no `waitForTimeout`, no `any` types
- [ ] All locators have `.describe()`
- [ ] Path aliases used (no relative imports)

**Reference:** [`docs/reporting.md`](../../docs/reporting.md) — HTML Reporter and ReportPortal integration

---

## Quick Reference — Documentation Map

| Topic | Document |
|-------|----------|
| **All coding rules** (authoritative) | [`docs/coding-standards.md`](../../docs/coding-standards.md) |
| **Page Object rules** | [`docs/patterns/page-object.md`](../../docs/patterns/page-object.md) |
| **Locator extraction process** | [`docs/patterns/locators.md`](../../docs/patterns/locators.md) |
| **Element interactions & BasePage** | [`docs/patterns/elements.md`](../../docs/patterns/elements.md) |
| **Test data management** | [`docs/patterns/test-data-management.md`](../../docs/patterns/test-data-management.md) |
| **Reporting** | [`docs/reporting.md`](../../docs/reporting.md) |
| **Existing Page Objects registry** | [`docs/maps/page-object-map.md`](../../docs/maps/page-object-map.md) |
| **Tech stack & folder structure** | [`docs/tech-stack.md`](../../docs/tech-stack.md) |
| **Quick standards reference** | [`.claude/testing-principles.md`](../testing-principles.md) |
