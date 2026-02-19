# Agentic Spec-Driven Workflow

⚠️ **NO COPY-PASTE POLICY**:
- This document describes the **process**, not code to copy
- Any code snippets are **illustrative only**
- Create your own implementations based on YOUR application's requirements

This codebase serves as an environment optimized for AI agents following the Harness Engineering paradigm. Humans define testing intent and provide guidance, while agents construct the test flows, interact with the application, build Page Objects, and maintain the testing infrastructure using automated feedback, locators, and skills like `playwright-cli`.

---

## Agentic Test Development Workflow

The AI agent will follow this 4-step workflow to develop robust automated tests from human intent (manual test cases).

### 1. Analysis

**Goal:** Understand the existing codebase and identify opportunities for reuse.

1. **Read Intent:** The agent receives a manual test case or Gherkin scenario from the human.
2. **Search Existing:** 🔴 **MANDATORY**: Before writing ANY code, the agent checks `docs/maps/page-object-map.md` and searches the codebase.
   - If the Page Object and locator already exist → **use them**.
   - If the Page Object exists but an interaction or state query method is missing → **extend the existing Page Object**.
3. **Verify:** Confirm no similar functionality exists before creating new files.

### 2. Exploration (Playwright CLI)

**Goal:** Interactively discover and verify elements within the live application.

If new locators, state validations, or interactions are needed:
1. The agent uses the `playwright-cli` skill to open the browser.
2. The agent manually performs the test case workflow in the live browser via the CLI.
3. The agent extracts exact, verified locators that are stable and semantic (preferring `getByRole`, `getByText`, etc.).
4. The agent creates snapshots of the DOM as necessary to ensure accuracy.

### 3. Development

**Goal:** Write the Page Object extensions and the Test Spec orchestration.

1. **Extend POMs:** The agent writes the code to add the verified locators to the Page Objects (always using `.describe()`).
2. **Build Methods:** The agent adds atomic interactions and state queries to the Page Objects. **Common assertions** that are repeated across tests should be implemented directly within the Page Object Model (POM) files to minimize duplication.
3. **Spec Orchestration:** The agent creates or updates the spec file (`.spec.ts`) to orchestrate the test workflow using the Page Object methods.
4. **Specific Assertions:** The agent writes test-specific assertions directly within the spec files.
5. **Authentication:** For tests requiring authentication, the agent passes credentials directly into `wikipediaAuthPage.authenticateUser(username, password)`.
6. **Self-Documenting Code:** The agent relies on clear method names and does NOT add explanatory architecture comments. It may use `@step` decorators on Page Object methods to organize large flows.
7. **Maps:** The agent updates `docs/maps/page-object-map.md` to reflect any new abstractions created.

### 4. Validation

**Goal:** Ensure the developed test runs perfectly in isolation.

1. The agent uses a local skill (or terminal `pnpm test`) to execute this newly created test case locally against the proper environment.
2. **Troubleshoot:** If the test fails, the agent uses the error feedback (Playwright HTML reporter, console logs, or traces) to adjust the locators, waits, or methods.
3. Once the test passes successfully and reliably without flakiness, the task is complete.

---

## Documentation References

**Reference:** `.cursorrules` is the authoritative source for all coding rules and structure.

| Pattern | Document |
|---------|----------|
| Page Objects | [patterns/page-object.md](patterns/page-object.md) |
| Locators | [patterns/locators.md](patterns/locators.md) |
| API utilities | [patterns/api-utils.md](patterns/api-utils.md) |
| Test data | [patterns/test-data-management.md](patterns/test-data-management.md) |
| Elements | [patterns/elements.md](patterns/elements.md) |
| Coding standards | [coding-standards.md](coding-standards.md) |

---

## Code Submission Context

When preparing a Pull Request:
1. **Verify all tests pass** (100% required).
2. **Stage changes** (`git add`) - **Only `.ts` files (tests, pages)**. Do NOT add `.feature` files or speculative inputs.
3. **Create commit** with descriptive message.
4. **Push branch** to remote.
5. Provide the human operator with a summary of the automated work for final review.
