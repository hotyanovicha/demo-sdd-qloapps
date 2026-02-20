---
name: develop-test
description: >
  Develop a Playwright automated test from a manual test case or Gherkin scenario.
  Use when the user provides a test case, asks to automate a scenario, or says "write a test for X".
allowed-tools: Read, Grep, Glob, Write, Edit, Bash(playwright-cli:*), Bash(pnpm:*), Bash(npx playwright:*), Bash(git:*)
---

# Agentic Test Development

Follow this 4-step workflow precisely. Each step has mandatory actions — do not skip them.

---

## Step 1 — Analysis

**Goal:** Understand the test intent and identify what already exists.

### 1.1 Read the authoritative standards
```
Read docs/coding-standards.md
```

### 1.2 Parse the user's intent
From the test case or Gherkin scenario, identify:
- The pages / flows involved
- The actions to perform
- The assertions to make

### 1.3 Check existing code (MANDATORY — no exceptions)
```
Read docs/maps/page-object-map.md
```
Then search the codebase:
```
Grep "<PageName|MethodName|keyword>" tests/pages/
Glob "tests/pages/**/*.ts"
Glob "tests/fixtures/**/*.ts"
Glob "utils/**/*.ts"
```

**Decision tree:**
- PO + locator exist → **use them as-is**
- PO exists, method missing → **extend the existing PO** (do NOT create a new one)
- PO does not exist → proceed to Step 2

---

## Step 2 — Exploration (Browser)

**Goal:** Interactively discover and verify element locators in the live application.

> Skip this step only if ALL required locators already exist and are verified in the codebase.

### 2.1 Read the locator rules
```
Read docs/patterns/locators.md
```

### 2.2 Open the browser and navigate
```
playwright-cli open --url <BASE_URL>
playwright-cli goto <target-page-path>
```

### 2.3 Perform the workflow manually
Navigate through the exact test scenario in the live browser to reveal the real DOM structure.

### 2.4 Extract and verify locators
Follow the 6-step process defined in `docs/patterns/locators.md`. Key tool commands:
```
playwright-cli snapshot                                                    # visual structure
playwright-cli eval "document.querySelector('#container').outerHTML"       # extract HTML
playwright-cli eval "document.querySelectorAll('<selector>').length"       # verify uniqueness = 1
```

---

## Step 3 — Development

**Goal:** Write the Page Object extensions and the test spec.

### 3.1 Read the pattern docs before writing any code
```
Read docs/patterns/page-object.md
Read docs/patterns/elements.md
Read docs/patterns/test-data-management.md
```

### 3.2 Extend or create the Page Object
Follow all rules from `docs/patterns/page-object.md`. Key constraints:
- One PO per unique URL — verify in `docs/maps/page-object-map.md` first
- Do NOT create new fixtures without explicit engineer approval

### 3.3 Write the spec file
Follow test structure and fixture rules from `docs/coding-standards.md`:
- File naming: kebab-case, `.spec.ts` suffix
- Test naming: `should [outcome] when [scenario]`

### 3.4 Update the registry (MANDATORY)
After writing or extending any Page Object:
```
Edit docs/maps/page-object-map.md
# Add: class name, URL, key methods, locator descriptions
```

---

## Step 4 — Validation

**Goal:** Confirm the test runs correctly and reliably.

### 4.1 Run the test
```bash
BASE_URL=http://localhost:8080 pnpm exec playwright test <path/to/spec.ts> --reporter=html
```

### 4.2 Troubleshoot failures
```
Read docs/reporting.md
```
Diagnose using the Playwright HTML Reporter, console output, or re-open `playwright-cli` to re-investigate live.

Common causes: locator no longer unique → re-verify with `playwright-cli snapshot`; timing → replace `waitForTimeout` with a proper wait condition.

### 4.3 Done criteria

The task is complete when:
- [ ] Test passes on first run (no retry needed)
- [ ] Test passes on a second consecutive run (no flakiness)
- [ ] `docs/maps/page-object-map.md` is updated
- [ ] No hardcoded credentials, no `waitForTimeout`, no `any` types
- [ ] All locators have `.describe()`
- [ ] Path aliases used (no relative imports)

---

## Documentation Map

| Topic | Document |
|-------|----------|
| **All coding rules** (authoritative) | [`docs/coding-standards.md`](../../docs/coding-standards.md) |
| **Page Object rules** (20 rules) | [`docs/patterns/page-object.md`](../../docs/patterns/page-object.md) |
| **Locator extraction** (6-step process) | [`docs/patterns/locators.md`](../../docs/patterns/locators.md) |
| **Element interactions & BasePage** | [`docs/patterns/elements.md`](../../docs/patterns/elements.md) |
| **Test data management** | [`docs/patterns/test-data-management.md`](../../docs/patterns/test-data-management.md) |
| **Reporting** | [`docs/reporting.md`](../../docs/reporting.md) |
| **Existing Page Objects registry** | [`docs/maps/page-object-map.md`](../../docs/maps/page-object-map.md) |
| **Tech stack & folder structure** | [`docs/tech-stack.md`](../../docs/tech-stack.md) |
