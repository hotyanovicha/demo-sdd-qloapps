---
name: develop-test-mcp
description: >
  Develop a Playwright automated test using Playwright MCP browser tools for live element exploration.
  Use when the user provides a test case, asks to automate a scenario, or says "write a test for X".
  Requires Playwright MCP server to be running (configured in .mcp.json).
allowed-tools: Read, Grep, Glob, Write, Edit, Bash(pnpm:*), Bash(npx playwright:*), Bash(git:*), mcp__playwright__browser_navigate, mcp__playwright__browser_snapshot, mcp__playwright__browser_click, mcp__playwright__browser_fill, mcp__playwright__browser_select_option, mcp__playwright__browser_evaluate, mcp__playwright__browser_screenshot, mcp__playwright__browser_wait_for, mcp__playwright__browser_type, mcp__playwright__browser_hover, mcp__playwright__browser_close
---

# Agentic Test Development (MCP Edition)

Follow this 4-step workflow precisely. Each step has mandatory actions — do not skip them.

---

## Step 1 — Analysis

**Goal:** Understand the test intent and identify what already exists.

### 1.1 Read the authoritative standards
```
Read docs-mcp/coding-standards.md
```

### 1.2 Parse the user's intent
From the test case or Gherkin scenario, identify:
- The pages / flows involved
- The actions to perform
- The assertions to make

### 1.3 Check existing code (MANDATORY — no exceptions)
```
Read docs-mcp/maps/page-object-map.md
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

## Step 2 — Exploration (Playwright MCP)

**Goal:** Interactively discover and verify element locators in the live application.

> Skip this step only if ALL required locators already exist and are verified in the codebase.

### 2.1 Read the locator rules
```
Read docs-mcp/patterns/locators.md
```

### 2.2 Navigate to the target page
```
mcp_playwright_browser_navigate({ url: "<BASE_URL><target-path>" })
```

### 2.3 Snapshot the page structure
```
mcp_playwright_browser_snapshot()
```
→ Read the accessibility tree. Identify elements and their containers.

### 2.4 Walk through the test scenario step by step
Use MCP interaction tools to reproduce the exact user flow. This reveals dynamic DOM states (e.g., dropdowns opening, form validation appearing):
```
mcp_playwright_browser_click({ selector: "<element>" })
mcp_playwright_browser_fill({ selector: "<input>", value: "<value>" })
mcp_playwright_browser_snapshot()   // re-snapshot after each interaction
```

### 2.5 Extract and verify each locator
Follow the 6-step process from `docs-mcp/patterns/locators.md`.

**Extract container HTML for precise inspection:**
```
mcp_playwright_browser_evaluate({
  function: "document.querySelector('<container>').outerHTML"
})
```

**Verify uniqueness (MUST return exactly 1):**
```
mcp_playwright_browser_evaluate({
  function: "document.querySelectorAll('<selector>').length"
})
```
- Result `1` → ✅ use this locator
- Result `0` or `2+` → ❌ pick a different locator

---

## Step 3 — Development

**Goal:** Write the Page Object extensions and the test spec.

### 3.1 Read the pattern docs before writing any code
```
Read docs-mcp/patterns/page-object.md
Read docs-mcp/patterns/elements.md
Read docs-mcp/patterns/test-data-management.md
```

### 3.2 Extend or create the Page Object
Follow all rules from `docs-mcp/patterns/page-object.md`. Key constraints:
- One PO per unique URL — verify in `docs-mcp/maps/page-object-map.md` first
- All locators must use `.describe('...')`
- Do NOT create new fixtures without explicit engineer approval

### 3.3 Write the spec file
Follow test structure and fixture rules from `docs-mcp/coding-standards.md`:
- File naming: kebab-case, `.spec.ts` suffix
- Test naming: `should [outcome] when [scenario]`

### 3.4 Update the registry (MANDATORY)
After writing or extending any Page Object:
```
Edit docs-mcp/maps/page-object-map.md
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
Read docs-mcp/reporting.md
```

If a locator fails, re-investigate the live DOM via MCP:
```
mcp_playwright_browser_navigate({ url: "<failing-page-url>" })
mcp_playwright_browser_snapshot()
mcp_playwright_browser_evaluate({ function: "document.querySelectorAll('<selector>').length" })
```

Common causes:
- Locator not unique → re-verify uniqueness count via `mcp_playwright_browser_evaluate`
- Timing issue → replace `waitForTimeout` with `mcp_playwright_browser_wait_for` or a proper Playwright wait
- Dynamic DOM → re-snapshot after each interaction to confirm state

### 4.3 Done criteria

The task is complete when:
- [ ] Test passes on first run (no retry needed)
- [ ] Test passes on a second consecutive run (no flakiness)
- [ ] `docs-mcp/maps/page-object-map.md` is updated
- [ ] No hardcoded credentials, no `waitForTimeout`, no `any` types
- [ ] All locators have `.describe()`
- [ ] Path aliases used (no relative imports)

---

## Documentation Map

| Topic | Document |
|-------|----------|
| **All coding rules** (authoritative) | [`docs-mcp/coding-standards.md`](../../docs-mcp/coding-standards.md) |
| **MCP workflow & tool reference** | [`docs-mcp/workflow.md`](../../docs-mcp/workflow.md) |
| **Page Object rules** | [`docs-mcp/patterns/page-object.md`](../../docs-mcp/patterns/page-object.md) |
| **Locator extraction** (6-step process) | [`docs-mcp/patterns/locators.md`](../../docs-mcp/patterns/locators.md) |
| **Element interactions & BasePage** | [`docs-mcp/patterns/elements.md`](../../docs-mcp/patterns/elements.md) |
| **Test data management** | [`docs-mcp/patterns/test-data-management.md`](../../docs-mcp/patterns/test-data-management.md) |
| **Reporting** | [`docs-mcp/reporting.md`](../../docs-mcp/reporting.md) |
| **Existing Page Objects registry** | [`docs-mcp/maps/page-object-map.md`](../../docs-mcp/maps/page-object-map.md) |
| **Tech stack & folder structure** | [`docs-mcp/tech-stack.md`](../../docs-mcp/tech-stack.md) |
