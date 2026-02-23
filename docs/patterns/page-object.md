# Page Object Pattern

**Location:** `tests/pages/` directory

**📘 Full Example:** [page-object-example.md](../examples/page-object-example.md)
**📘 Locator Extraction:** [locators.md](locators.md)

---

## Rules

1.  **🔴 CHECK [page-object-map.md](../maps/page-object-map.md) FIRST** - Never create without checking
2.  **🔴 MANDATORY: Locator Verification** - **ALL new locators MUST be verified using MCP browser tools**:
    - Use `mcp_playwright_browser_navigate` to navigate to target page
    - Use `mcp_playwright_browser_snapshot` to see page structure
    - Use `mcp_playwright_browser_evaluate` to verify uniqueness (must return exactly 1 element)
    - **❌ NEVER create locators without MCP verification** - See [locators.md](locators.md) for full process
3.  **Inherit from `BasePage`**
4.  **ONE locator per element** - Most reliable verified locator only (verified via MCP)
5.  **Locator reuse** - Prefer existing locators and extend existing Page Objects when needed
6.  **Direct Playwright API** - Use `Locator` for elements, BasePage methods for checks, `.describe()` for debugging. **All locators including `uniqueElement` must have `.describe()`.**
7.  **Atomic Actions** - Expose simple actions (click, type, get text), NOT complex business logic
8.  **Search existing first** - No duplicates allowed
9.  **ONE Page Object per unique page/URL**
10. **Consumed by Specs** - Page Objects are used directly by Test Specs.
11. **UPDATE page-object-map.md** - Immediately after creation
12. **🔴 POPUPS get separate Page Objects** - Always create a dedicated `*PopupPage` class for popups/modals. Small popups can be integrated into parent Page Objects.
13. **🔴 NEVER duplicate BasePage methods** - **NEVER override `waitForLoad()`**. Ensure the `uniqueElement` abstraction correctly identifies the page, and use the inherited method. Don't create methods like `verifyPopupVisible()`.
14. **🔴 UNIQUE element REQUIRED** - The `uniqueElement` property defined in the class **MUST be unique to that specific page type** and **MUST NOT appear on other pages**. Use MCP browser tools to verify:
    - Navigate to the target page and verify the locator exists (returns exactly 1 element)
    - Navigate to similar/related pages (e.g., Main Page vs Article Page) and verify the locator does NOT exist (returns 0 elements)
    - Prefer simple, semantic locators (e.g., `page.getByRole('link', { name: 'Edit' })`) over complex structural selectors
    - **Example:** Article pages use "Edit" link (unique), Main Page uses "View source" (different) - verify both pages to ensure uniqueness
15. **Expect assertions** - Direct Playwright `expect()` matchers (like `toHaveTitle`, `toBeVisible`) are allowed in Page Objects. General, shared assertion steps can be added to `BasePage` to avoid duplication.
16. **Step description on every method** - Every `@step()` method must have a human-readable description string: `@step('description')`. This description appears in Playwright HTML reports as the step name.
17. **🔴 Page Object-specific constants** - Constants specific to a Page Object (like page titles, specific text values) must be stored as constants at the top of the Page Object file. Use UPPER_SNAKE_CASE naming.
18. **🔴 Locator extraction process** - Follow [locators.md](locators.md) methodology for creating new locators. **MCP verification is MANDATORY** - Always verify uniqueness before implementation.
19. **🔴 Dynamic locators as arrow functions** - For parameterized locators (by index, text, etc.), use arrow function class properties instead of inline creation in methods. **Use dynamic locators directly** - Call the arrow function directly in methods (e.g., `this.paragraphs(index)`), do not create intermediate variables or helper methods.
20. **🔴 No unused methods** - Never create methods that are not used in tests. Remove unused methods immediately. Check usage before creating new methods.
21. **🔴 No getter-based locators** - NEVER define locators as JavaScript `get` accessor methods. A getter recreates the `Locator` instance on every access. Always use `private readonly` class fields (property initializer or constructor assignment).
22. **🔴 No inline locator creation inside methods** - All locators representing DOM elements MUST be declared as `private readonly` class properties (or arrow-function class properties for parametric locators). Methods must only reference or chain from those existing class properties — never call `this.page.locator()` inside a method body.

---

## Locator Declaration Rules

### No Getter-Based Locators (Rule 21)

```typescript
// ❌ BAD: getter method — creates a new Locator on every call
export class MyPage extends BasePage {
  private get submitButton() {
    return this.page.locator('#submit').describe('Submit button');
  }
}

// ✅ GOOD: private readonly field — single Locator instance
export class MyPage extends BasePage {
  private readonly submitButton = this.page.locator('#submit').describe('Submit button');
}
```

### No Inline Locators in Methods (Rule 22)

```typescript
// ❌ BAD: locator created inside a method body
async clickHotelOption(name: string): Promise<void> {
  const container = this.page.locator('#id_hotel_button_chosen'); // inline!
  await container.getByText(name).click();
}

// ✅ GOOD: static base locator as class field; dynamic chain is an arrow function
private readonly hotelDropdownContainer = this.page.locator('#id_hotel_button_chosen').describe('Hotel Dropdown Container');
private readonly hotelOption = (name: string) =>
  this.hotelDropdownContainer.getByText(name).describe(`Hotel option: ${name}`);

async clickHotelOption(name: string): Promise<void> {
  await this.hotelOption(name).click();
}
```

---

## Popup Page Objects

**Naming:** `*PopupPage.ts` (e.g., `WikipediaGetStartedPopupPage.ts`)

**Rules:**
- Always create a separate Page Object for popups/modals
- Use `PopupPage` suffix in class name
- **Use `uniqueElement` as the container** - Don't create separate container locators
- Small popups: integrate into parent Page Object
- Large/complex popups: warrant their own Page Object

```typescript
export class ConfirmDialogPopupPage extends BasePage {
    protected readonly uniqueElement: Locator;
    private readonly confirmButton: Locator;
    private readonly cancelButton: Locator;

    constructor(page: Page) {
        super(page);
        // uniqueElement IS the popup container - no separate container needed
        this.uniqueElement = page.locator('.dialog-popup');
        this.confirmButton = page.locator('button:has-text("OK")').describe('OK button');
        this.cancelButton = page.locator('button:has-text("Cancel")').describe('Cancel button');
    }

    // ✅ Use inherited waitForLoad() for visibility - DON'T create verifyPopupVisible()

    async verifyPopupContainsText(expectedText: string): Promise<void> {
        await expect(this.uniqueElement).toContainText(expectedText);
    }

    async clickConfirm(): Promise<void> {
        await this.confirmButton.click();
    }

    async verifyPopupHidden(): Promise<void> {
        await expect(this.uniqueElement).toBeHidden();
    }
}
```

---

## Step Descriptions for Reporting

**Rule:** Every `@step()` method must have a human-readable description string. This is what appears in Playwright HTML reports as the step name.

```typescript
// ✅ GOOD
@step('Open home page')
async open(): Promise<void> {
  await this.page.goto(URLS.HOME);
}

@step('Select hotel from dropdown and pick check-in / check-out dates')
async fillSearchForm(hotelName: string, checkInDay: string, checkOutDay: string): Promise<void> {
  // ...
}

// ❌ BAD: missing description — report shows "HomePage.fillSearchForm" instead of a readable label
@step()
async fillSearchForm(hotelName: string, checkInDay: string, checkOutDay: string): Promise<void> {
  // ...
}
```

---

## Page Object-Specific Constants

**Rule:** Constants specific to a Page Object (like page titles, specific text values used only in that PO) must be stored as constants at the top of the Page Object file.

**Placement:**
- Define constants before the class declaration
- Use `UPPER_SNAKE_CASE` naming
- Keep constants close to where they're used

**Examples:**

```typescript
import { Page, Locator } from '@playwright/test';
import { BasePage } from './BasePage';

const LOGIN_PAGE_TITLE = /Log in/i;
const EXPECTED_ERROR_MESSAGE = 'Invalid credentials';

export class WikipediaLoginPage extends BasePage {
    // ... class implementation
    
    async verifyLoginPageTitle(): Promise<void> {
        await this.verifyPageTitle(LOGIN_PAGE_TITLE);
    }
}
```

**When to use other approaches:**
- **Multiple Page Objects** → Use test data provider or constants file
- **Multiple test files** → Use test data provider (JSON file)
- **API constants** → Use `tests/api/constants/*.ts`

---

## BasePage Assertion Methods

**Rule:** Direct Playwright `expect` matchers are allowed in Page Objects. However, highly reusable or generic assertions can be added to `BasePage` as shared methods to avoid duplication.

**Examples:**

```typescript
// ✅ GOOD: Direct expect in Page Object is now allowed
async verifyLoginPageTitle(): Promise<void> {
    await expect(this.page).toHaveTitle(/Log in/i);
}

// ✅ GOOD: Use BasePage method for generic, shared actions if defined
async verifyCondition(): Promise<void> {
    await this.verifyPageOpened();
}
```

## Before Creating

**MANDATORY STEPS:**
1.  **OPEN** `docs/maps/page-object-map.md`
2.  **SEARCH** for existing Page Objects
3.  **VERIFY** no similar page exists

```bash
# Check the map
cat docs/maps/page-object-map.md

# Search existing
grep -r "class.*Page" tests/pages/
```

**Reuse Strategy:**
Same page → extend existing | Similar page → inheritance | Different page → new class

---

## Page Object Structure

```typescript
import { expect, Page, Locator } from "@playwright/test";
import { BasePage } from "@pages/BasePage";

export class PageName extends BasePage {
    protected readonly uniqueElement: Locator;
    private readonly submitButton: Locator;
    private readonly messageLabel: Locator;

    constructor(page: Page) {
        super(page);
        this.uniqueElement = page.locator("#unique-container");

        // Elements - ONE locator each, use .describe() for debugging
        this.submitButton = page.locator("#submit-btn").describe("Submit button");
        this.messageLabel = page.locator(".message").describe("Message label");
    }

    /**
     * Click submit button
     */
    async clickSubmit(): Promise<void> {
        await expect(this.submitButton).toBeVisible();
        await this.submitButton.click();
    }

    /**
     * Get message text
     */
    async getMessageText(): Promise<string> {
        await expect(this.messageLabel).toBeVisible();
        const text = await this.messageLabel.textContent();
        return text || "";
    }
}
```

---

## Dynamic Locators

For locators that depend on parameters (index, text, ID), use **arrow function class properties**:

```typescript
export class WikipediaArticlePage extends BasePage {
    protected readonly uniqueElement: Locator;
    private readonly paragraphs: (index: number) => Locator;

    constructor(page: Page) {
        super(page);
        this.uniqueElement = page.getByRole('link', { name: 'Edit' });
        // ✅ Arrow function for parameterized locator
        this.paragraphs = (index: number) => 
            page.locator('#mw-content-text .mw-parser-output > p')
                .nth(index)
                .describe('Article paragraphs');
    }

    /**
     * Verify paragraph at specified index contains expected text
     */
    async verifyParagraphContainsText(expectedText: string, index: number = 0): Promise<void> {
        // ✅ Use dynamic locator directly - no intermediate variables
        const paragraph = this.paragraphs(index);
        await expect(paragraph).toBeVisible();
        await expect(paragraph).toContainText(expectedText);
    }
}
```

**Why arrow functions?**
- Locators stay centralized in class properties
- Reusable across multiple methods
- Easy to compose (e.g., `getCell` uses `getRow`)
- Consistent with static locator pattern

**🔴 Use dynamic locators directly:**
- ✅ **GOOD**: Call the arrow function directly in methods (e.g., `this.paragraphs(index)`)
- ❌ **BAD**: Creating intermediate helper methods (e.g., `getParagraph(index)`)
- ❌ **BAD**: Creating locator inline in method without arrow function property

**❌ Avoid patterns:**
```typescript
// BAD: Intermediate helper method
private readonly getParagraph = (index: number): Locator =>
    this.paragraphs.nth(index);

async verifyParagraphContainsText(expectedText: string, index: number = 0): Promise<void> {
    const paragraph = this.getParagraph(index); // ❌ Don't create helper methods
    await this.elementToBeVisible(paragraph);
}

// BAD: Creating locator inline in method
async verifyParagraphContainsText(expectedText: string, index: number = 0): Promise<void> {
    const paragraph = page.locator('#mw-content-text .mw-parser-output > p').nth(index); // ❌ Don't create inline
    await this.elementToBeVisible(paragraph);
}
```

---

## Success Criteria

-   ✅ All `@step()` methods have a human-readable description string
-   ✅ Existing Page Objects searched and reused
-   ✅ ONE verified locator per element
-   ✅ Reuses existing locators and keeps them centralized in Page Objects
-   ✅ Playwright `Locator` used for all elements
-   ✅ All locators have `.describe()` for debugging
-   ✅ Dynamic locators use arrow function class properties
-   ✅ No getter-based locators (`get propertyName()`) — all are `private readonly` fields
-   ✅ No locators created inline inside method bodies
-   ✅ All locators including `uniqueElement` have `.describe()`
-   ✅ BasePage inherited correctly with uniqueElement implemented
-   ✅ Atomic public API
-   ✅ No duplicate functionality
-   ✅ ONE Page Object per unique page/URL
-   ✅ Consumed by Test Specs
-   ✅ [page-object-map.md](../maps/page-object-map.md) updated
