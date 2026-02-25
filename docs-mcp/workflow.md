# Agentic Spec-Driven Workflow

⚠️ **NO COPY-PASTE POLICY**:
- This document describes the **process**, not code to copy
- Any code snippets are **illustrative only**
- Create your own implementations based on YOUR application's requirements

This codebase serves as an environment optimized for AI agents following the Harness Engineering paradigm. Humans define testing intent and provide guidance, while agents construct the test flows, interact with the application, build Page Objects, and maintain the testing infrastructure using automated feedback, locators, and MCP browser tools.

---

## Playwright MCP — How to Use the Browser Tools

The agent has native access to Playwright MCP tools. These replace all `playwright-cli` commands. Use them directly — no skill invocation needed.

### Available MCP Tools

| Tool | Purpose | When to Use |
|------|---------|-------------|
| `mcp_playwright_browser_navigate` | Navigate to a URL | Opening a page, following a flow step |
| `mcp_playwright_browser_snapshot` | Accessibility tree + page structure | Identifying elements, understanding layout |
| `mcp_playwright_browser_click` | Click an element | Interacting with buttons, links, menus |
| `mcp_playwright_browser_fill` | Fill a text input | Entering form data |
| `mcp_playwright_browser_select_option` | Select a `<select>` option | Dropdown interaction |
| `mcp_playwright_browser_evaluate` | Run JavaScript in the page | Counting elements, extracting HTML, verifying uniqueness |
| `mcp_playwright_browser_screenshot` | Take a screenshot | Visual confirmation of page state |
| `mcp_playwright_browser_wait_for` | Wait for a condition | Waiting for navigation or element appearance |

### Core Workflow for Locator Extraction

The mandatory sequence for every new locator:

```
1. mcp_playwright_browser_navigate  → open the target page
2. mcp_playwright_browser_snapshot  → read the accessibility tree
3. mcp_playwright_browser_evaluate  → extract container HTML for detail
4. mcp_playwright_browser_evaluate  → verify uniqueness (result must be exactly 1)
```

#### Step-by-Step Example

**Navigate to the page:**
```
mcp_playwright_browser_navigate({ url: "http://localhost:8080/en/login" })
```

**Take a snapshot to see the structure:**
```
mcp_playwright_browser_snapshot()
```
→ Returns an accessibility tree. Identify the target element and its container.

**Extract the container HTML for precise inspection:**
```
mcp_playwright_browser_evaluate({
  function: "document.querySelector('#login-form').outerHTML"
})
```

**Verify locator uniqueness (MUST return 1):**
```
mcp_playwright_browser_evaluate({
  function: "document.querySelectorAll('input#email').length"
})
// ✅ Result: 1 → use this locator
// ❌ Result: 0 or 2+ → pick a different locator
```

**Interact to reveal dynamic DOM (e.g., click to open a dropdown):**
```
mcp_playwright_browser_click({ selector: "#hotel-dropdown .chosen-single" })
mcp_playwright_browser_snapshot()  // inspect the now-open dropdown
```

### Rules for MCP Tool Usage

- **Always navigate before snapshotting** — tools operate on the current page state
- **Always verify uniqueness** before adding any locator to a Page Object
- **Use snapshot first** to orient yourself, then evaluate for precise HTML
- **Re-snapshot after interactions** (clicks, form fills) to confirm DOM changes
- **Never assume a locator is correct** — always verify via `mcp_playwright_browser_evaluate`

### Hard Prohibitions

🔴 **NEVER read Smarty `.tpl` template files** to infer element structure. Templates are not the source of truth — the rendered DOM is. Always use MCP browser tools (`snapshot`, `evaluate`) to explore the live page.

🔴 **NEVER navigate directly to deep pages via constructed URLs** (e.g., search results with hardcoded date query params, checkout page without going through the booking flow). Always follow the full UI flow from the natural entry point (homepage or login page). Shortcutting via URL bypasses the real user path and may produce a DOM state that does not match what tests will encounter.

---

## Agentic Test Development Workflow

The AI agent will follow this 4-step workflow to develop robust automated tests from human intent (manual test cases).

### 0. Pre-Analysis Gate (MANDATORY for batched scenarios)

When given **more than one scenario** to automate in a single request, the agent MUST ask the user the following questions BEFORE reading any code or docs:

1. **Base URL** — "What is the `BASE_URL` for the running application?" Do NOT assume `localhost:8080` or any other address.
2. **Grouping** — "Should these scenarios be grouped into a single spec file per feature area (e.g., `portal.spec.ts`, `admin.spec.ts`), or one spec file per scenario?"
3. **Processing order** — "Should I develop them sequentially (one at a time, each passing before starting the next) or plan the full set first?"

Do not proceed to Step 1 until all three questions are answered.

> For a **single scenario**, skip this step and proceed directly to Step 1.

### 1. Analysis

**Goal:** Understand the existing codebase and identify opportunities for reuse.

1. **Read Intent:** The agent receives a manual test case or Gherkin scenario from the human.
2. **Search Existing:** 🔴 **MANDATORY**: Before writing ANY code, the agent checks `docs-mcp/maps/page-object-map.md` and searches the codebase.
   - If the Page Object and locator already exist → **use them**.
   - If the Page Object exists but an interaction or state query method is missing → **extend the existing Page Object**.
3. **Verify:** Confirm no similar functionality exists before creating new files.
4. **Duplicate Gate:** 🔴 **MANDATORY** — If a spec file with a test matching this scenario already exists, the agent MUST **stop and notify the user** before doing anything else:
   - Report the exact file path and test name found.
   - Ask: "This scenario appears to already be automated in `<path>`. Should I (a) run it as validation, (b) skip it, or (c) treat this as a new/updated scenario to develop?"
   - Do NOT silently proceed to validation or skip to Step 4 without explicit user confirmation.

### 2. Exploration (Playwright MCP)

**Goal:** Interactively discover and verify elements within the live application.

If new locators, state validations, or interactions are needed:
1. The agent uses `mcp_playwright_browser_navigate` to open the target page.
2. The agent uses `mcp_playwright_browser_snapshot` to inspect the page structure and identify elements.
3. The agent walks through the test scenario step-by-step using `mcp_playwright_browser_click`, `mcp_playwright_browser_fill`, etc., to reveal the real DOM state at each step.
4. The agent uses `mcp_playwright_browser_evaluate` to extract HTML and verify locator uniqueness (must return exactly 1).
5. The agent extracts exact, verified locators following this strict priority:
   - **1st:** `getByTestId()` (if `data-testid` is available)
   - **2nd:** Unique `id` or other highly specific attributes
   - **3rd:** Semantic locators (`getByRole`, `getByLabel`, `getByText`, etc.)

See [patterns/locators.md](patterns/locators.md) for the full 6-step mandatory process.

### 3. Development

**Goal:** Write the Page Object extensions and the Test Spec orchestration.

1. **Extend POMs:** The agent writes the code to add the verified locators to the Page Objects (always using `.describe()`).
2. **Build Methods:** The agent adds atomic interactions and state queries to the Page Objects. **Common assertions** that are repeated across tests should be implemented directly within the Page Object Model (POM) files to minimize duplication.
3. **Spec Orchestration:** The agent creates or updates the spec file (`.spec.ts`) to orchestrate the test workflow using the Page Object methods.
4. **Specific Assertions:** The agent writes test-specific assertions directly within the spec files.
5. **Fixtures & Authentication:** Use existing Playwright fixtures for authorization and page setup. **Do not create new fixtures** without explicit approval from an engineer.

   **When a test needs a freshly registered user** (checkout, bookings, profile tests), use the `authPages` fixture from `@fixtures/index`. It registers a new user before each test and provides:
   - `authPage` — a `PageManager` already on the My Account page post-registration
   - `user` — `{ email, password, firstName, ... }` registration data

   ```typescript
   test('...', async ({ authPages, pages }) => {
     const { authPage, user } = authPages;
     // authPage.myAccountPage is already loaded
     // use pages.xxx for subsequent navigation
   });
   ```

   Do NOT register a user manually in the test body. Do NOT create a new fixture without engineer approval.
6. **Self-Documenting Code:** The agent relies on clear method names and does NOT add explanatory architecture comments. It may use `@step` decorators on Page Object methods to organize large flows.
7. **Maps:** The agent updates `docs-mcp/maps/page-object-map.md` to reflect any new abstractions created.

### 4. Validation

**Goal:** Ensure the developed test runs perfectly in isolation.

1. Run the test via terminal: `pnpm exec playwright test <path/to/spec.ts> --reporter=html`
2. **Troubleshoot:** If the test fails, re-open the page with `mcp_playwright_browser_navigate` and use `mcp_playwright_browser_snapshot` or `mcp_playwright_browser_evaluate` to re-investigate the live DOM. Adjust locators, waits, or methods based on findings.
3. Once the test passes successfully and reliably without flakiness, the task is complete.

---

## Documentation References

**Reference:** `docs-mcp/coding-standards.md` is the authoritative source for all coding rules and structure.

| Pattern | Document |
|---------|----------|
| Page Objects | [patterns/page-object.md](patterns/page-object.md) |
| Locators | [patterns/locators.md](patterns/locators.md) |
| Test data | [patterns/test-data-management.md](patterns/test-data-management.md) |
| Elements | [patterns/elements.md](patterns/elements.md) |
| Coding standards | [coding-standards.md](coding-standards.md) |

---

## Code Submission Context

When preparing a Pull Request:
1. **Verify all tests pass** (100% required).
2. **Stage changes** (`git add`) - **Only `.ts` files (tests, pages)**. Do NOT add `.feature` files or speculative inputs.
3. Provide the human operator with a summary of the automated work for final review.
