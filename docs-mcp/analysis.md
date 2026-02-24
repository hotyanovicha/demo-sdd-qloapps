# Analysis: Developed Tests vs. Documentation

This document highlights the differences (diffs) between the developed test (`tests/ui/auth/auth.spec.ts` & associated Page Objects/Fixtures) and the project's documentation (`docs/workflow.md`, `docs/coding-standards.md`, `docs/patterns/page-object.md`). 

## High-Level Discrepancies (Diffs)

### 1. BasePage Architecture & Assertions
- **Doc Rule (`docs/patterns/page-object.md`):** Mandates using BasePage assertion wrapper methods like `elementToBeVisible()`, `elementToContainText()`, and `verifyPageOpened()`. Direct imports and usage of `expect` in Page Objects are forbidden.
- **Implementation:** `src/ui/pages/base.page.ts` is extremely minimal. It defines an abstract `uniqueElement` and only offers `goto()` and `waitForLoad()`. It **does not** contain the required Playwright assertion wrappers.
- **Consequence:** `my-account.page.ts` imports `expect` directly and implements methods like `expectHeadingVisible()` containing direct `expect()` assertions, violating the documentation's anti-patterns.

### 2. URL Validation
- **Doc Rule (`docs/coding-standards.md`):** "🔴 Never assert or validate URLs in UI tests or Page Objects."
- **Implementation:** `my-account.page.ts` has an `expectUrl()` method which uses `expect(this.page).toHaveURL(/my-account/);`.
- **Consequence:** Direct contradiction of the explicit rule against URL assertions.

### 3. Locator Strategy & Descriptions
- **Doc Rule (`docs/patterns/page-object.md`):** All locators must use `.describe('...')` for debugging purposes.
- **Implementation:** Locators in `registration.page.ts` (e.g., `this.firstNameInput = this.page.locator('input#customer_firstname');`) and `my-account.page.ts` lack the `.describe()` calls.
- **Consequence:** Debugging output won't have semantic descriptions of locators.

### 4. Page Object Constructor arguments (`formLocator` vs `uniqueElement`)
- **Doc Rule:** Mentions passing `formLocator` and `pageName` via `super(page, page.locator(...), 'PageName')`.
- **Implementation:** `BasePage` expects child classes to implement a `protected abstract readonly uniqueElement: Locator;` instead of passing it to `super()`. `super(page)` takes only the `page` argument.
- **Consequence:** The documentation's code examples for Page Object creation do not compile with the current `BasePage`.

### 5. Playwright Fixtures vs Test Flows
- **Doc Rule (`docs/coding-standards.md` & `workflow.md`):** Reusable preconditions should be in `test.beforeEach` or use API setup. Test actions should be orchestrated in the spec file.
- **Implementation:** The `authPages` fixture (`src/ui/fixtures/index.ts`) completely automates the UI registration flow inside the fixture's setup phase up to the `MyAccountPage`. The actual `auth.spec.ts` script simply calls three assertion methods.
- **Consequence:** The test's core action (registering) is hidden inside the test fixture. While Playwright fixtures are powerful for state setup, hiding a test's primary action within a fixture makes the test less readable.

---

## Recommendations: What to Adjust

You have two paths depending on your preferred framework style. Based on your recent restructuring efforts using OpenAI Harness Engineering principles, here are the recommended adjustments:

### Recommendation A: Update the Documentation to match the new lightweight implementation
If the current lightweight `BasePage` and fixture-heavy approach is the desired direction for this project, you should update the docs:
1. **Remove the BasePage assertion rule:** Allow `expect` to be used within Page Objects for specific validations, or define what assertions belong in the Spec vs. the PO.
2. **Update PO Constructor Docs:** Change the documentation to reflect the `abstract uniqueElement` pattern rather than the `super(formLocator)` pattern.
3. **Formalize Fixture Usage:** Add a section to `docs/coding-standards.md` that explicitly encourages using Playwright custom fixtures (like `authPages`) for complex UI preconditions and state building.
4. **Relax the URL assertion rule:** If `expectUrl()` is necessary for your test suite, remove the hard ban on URL assertions.

### Recommendation B: Update the Codebase to strictly enforce the Documentation (Recommended for Strict QA Automation)
If the existing documentation reflects your ideal architecture, the codebase needs refactoring:
1. **Enrich `BasePage`:** Add the missing wrapper methods (`elementToBeVisible()`, `elementToContainText()`, etc.) to `src/ui/pages/base.page.ts`.
2. **Refactor Page Objects:** Remove direct `expect` imports from `my-account.page.ts` and use the new `BasePage` wrapper methods. 
3. **Remove URL Assertions:** Delete `expectUrl()` from `my-account.page.ts` and rely on UI stable signals (like the heading).
4. **Add `.describe()`:** Iterate through the locator definitions in `registration.page.ts` and append `.describe(...)`.
5. **Move Test Actions to Spec:** Refactor the test so the registration steps (`createAccount()`, `register()`) happen inside `auth.spec.ts`, while the `authPages` fixture purely provides the instantiated Page Objects. 
