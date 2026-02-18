# Agent Rules: Developing Tests with MCP & Browser Tools

This document outlines the standard operating procedure (SOP) for agents when developing and debugging Playwright tests, specifically checking the DOM state using MCP or browser tools.

## Core Principle
**"Validate first, assert second."** 
Never guess a selector or an expected value. Use available tools to inspect the *actual* state of the application before writing the test code.

## Workflow

### 1. Exploration & Validation
Before writing a test or fixing a failure, use **MCP** (if available) or `browser_subagent` to explore the DOM.

- **Navigate**: Go to the specific page or state.
- **Inspect**: Use tools to get the outer HTML, computed styles, or `innerText` of elements.
  - *Goal*: Confirm IDs, classes, hierarchy, and visibility.
  - *Goal*: Identify hidden inputs (e.g., `opacity: 0`).
  - *Goal*: Validate exact text content (e.g., "John" vs "John Doe").

**Example (Browser Subagent):**
```markdown
Task: "Inspect the user button in the header and return its exact text."
Result: "The button text is 'John'."
```

### 2. Locator Strategy
Based on the inspection:
- **Prefer User-Facing Locators**: Use `getByRole`, `getByLabel`, `getByText`.
- **Avoid Fragile Selectors**: Do not use dynamic IDs or long CSS chains unless necessary.
- **Handle Hidden Elements**: If an element is hidden (e.g., custom radio buttons), use `.check({ force: true })` or target the visible label if interactive.

### 3. Writing Assertions
Use the **verified data** from Step 1 to write strict assertions.

- **Exact Matches**: If the inspection showed "John", assert `toBeVisible({ name: 'John' })`.
- **State Checks**: Assert `toBeVisible()`, `toBeChecked()`, `toHaveURL()`.
- **Wait Explicitly**: If a page transition occurs, use `expect(page).toHaveURL(...)` or `waitForLoad()` before checking elements.

## Example Scenario

**User Request**: "Verify account creation."

1.  **Agent Action**: Use `browser_subagent` to register a user manually and inspect the "My Account" page.
2.  **Observation**: The header button says "John", not "John Doe".
3.  **Code Implementation**:
    ```typescript
    // Correct
    await expect(page.getByRole('button', { name: 'John' })).toBeVisible();

    // Incorrect (Guestimation)
    await expect(page.getByRole('button', { name: 'John Doe' })).toBeVisible();
    ```

## Troubleshooting
If a test fails:
1.  **Don't just re-run**.
2.  **Inspect**: Use a tool to see what the browser actually sees (snapshots, error context, or subagent inspection).
3.  **Correct**: Update the code to match reality.
