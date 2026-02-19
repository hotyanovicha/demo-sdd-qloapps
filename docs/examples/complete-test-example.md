# Complete Test Example

> ⚠️ **ILLUSTRATIVE ONLY**: The classes shown below (`WikipediaCreateAccountPage`, `WikipediaGetStartedPopupPage`, `WikipediaLandingPage`) are **examples for demonstration purposes** and may not exist in the actual codebase. Use this as a pattern reference, not code to copy.

This example demonstrates a full test implementation using:
1.  **Page Objects** (Atomic actions and composite workflows)
2.  **Fixtures** (Dependency injection)
3.  **Playwright Test** (Execution)

## 1. Page Object (`tests/pages/WikipediaCreateAccountPage.ts`)

```typescript
import { Page, Locator } from "@playwright/test";
import { BasePage } from "./BasePage";
import { step } from "@utils/decorators";

export class WikipediaCreateAccountPage extends BasePage {
    private readonly usernameInput: Locator;
    private readonly passwordInput: Locator;
    private readonly confirmPasswordInput: Locator;
    private readonly createAccountButton: Locator;

    constructor(page: Page) {
        super(page, page.locator("input#wpName2"), "WikipediaCreateAccountPage");
        this.usernameInput = page.locator("input#wpName2").describe("Username input");
        this.passwordInput = page.locator("input#wpPassword2").describe("Password input");
        this.confirmPasswordInput = page.locator("input#wpRetype").describe("Confirm password input");
        this.createAccountButton = page.locator("button#wpCreateaccount").describe("Create account button");
    }

    async enterUsername(username: string): Promise<void> {
        await this.elementToBeVisible(this.usernameInput);
        await this.usernameInput.fill(username);
    }

    async enterPassword(password: string): Promise<void> {
        await this.elementToBeVisible(this.passwordInput);
        await this.passwordInput.fill(password);
    }

    async enterConfirmPassword(password: string): Promise<void> {
        await this.elementToBeVisible(this.confirmPasswordInput);
        await this.confirmPasswordInput.fill(password);
    }

    async clickCreateAccount(): Promise<void> {
        await this.elementToBeVisible(this.createAccountButton);
        await this.createAccountButton.click();
    }

    // ✅ Composite method: combines related actions for business logic
    @step('Fill account creation form with username "{0}"')
    async fillAccountForm(username: string, password: string): Promise<void> {
        await this.enterUsername(username);
        await this.enterPassword(password);
        await this.enterConfirmPassword(password);
    }
}
```

## 2. Fixtures (`tests/fixtures/pages.fixture.ts`)

```typescript
import { test as base } from "@playwright/test";
import { WikipediaCreateAccountPage } from "@pages/WikipediaCreateAccountPage";

type PagesFixtures = {
    wikipediaCreateAccountPage: WikipediaCreateAccountPage;
};

export const test = base.extend<PagesFixtures>({
    wikipediaCreateAccountPage: async ({ page }, use) => {
        await use(new WikipediaCreateAccountPage(page));
    },
});
```

## 3. Test Spec (`tests/specs/wikipedia-create-account.spec.ts`)

Tests use Page Objects for everything:
- **Composite workflows** for business-meaningful actions (login, fill form)
- **Atomic actions** for asserting state and performing single actions

```typescript
import { randomUsername, randomPassword } from '@utils/test-data-generator';
import { test } from '@fixtures';

test.describe('Wikipedia Account Creation', () => {
    // Test constants - no magic values!
    const MIN_PASSWORD_LENGTH = 12;
    const GET_STARTED_POPUP_MESSAGE = 'Click on your username to visit your homepage.';

    // ✅ Precondition shared by all tests in this file
    test.beforeEach(async ({ wikipediaLandingPage }) => {
        // PO: business action (open + verify)
        await wikipediaLandingPage.openAndVerify();
        await wikipediaLandingPage.selectEnglishAndVerifyMainPage();
    });

    test('Successful account creation on Wikipedia', async ({
        wikipediaNavigationMenu,          // PO for atomic actions
        wikipediaCreateAccountPage,       // PO for atomic actions and composite actions
        wikipediaMainPage,                // PO for atomic verification
        wikipediaGetStartedPopupPage      // PO for popup interaction
    }) => {
        // Generate random credentials
        const username = randomUsername();
        const password = randomPassword(MIN_PASSWORD_LENGTH);

        // PO: single atomic clicks (reported via @step decorators on the POM)
        await wikipediaNavigationMenu.clickCreateAccount();
        await wikipediaCreateAccountPage.verifyPageOpened();

        // PO: composite business action (fills 3 fields, @step decorator handles reporting)
        await wikipediaCreateAccountPage.fillAccountForm(username, password);

        // PO: single atomic clicks
        await wikipediaCreateAccountPage.clickCreateAccount();
        await wikipediaMainPage.verifyPageOpened();

        // PO: interacting with getting started popup
        await wikipediaGetStartedPopupPage.verifyPopupVisible();
        await wikipediaGetStartedPopupPage.verifyPopupContainsText(GET_STARTED_POPUP_MESSAGE);
        await wikipediaGetStartedPopupPage.clickGotIt();
        await wikipediaGetStartedPopupPage.verifyPopupHidden();
    });
});
```

## 4. Authentication Pattern

For tests requiring authentication, use the `WikipediaAuthPage` with credentials passed as parameters:

```typescript
import { test } from '@fixtures';
import { getWikipediaCredentials } from '@utils/secrets';

test.describe('Wikipedia Authenticated Features', () => {
    test('Create new article', async ({
        wikipediaAuthPage,
        wikipediaArticleCreatePage,
        wikipediaVisualEditorPage
    }) => {
        // Get credentials at test level
        const { username, password } = getWikipediaCredentials();
        
        // Authenticate user via Page Objects
        await wikipediaAuthPage.authenticateUser(username, password);
        
        // Continue with authenticated actions
        await wikipediaArticleCreatePage.navigateToCreateNewPage();
        // ... rest of test
    });
});
```

**Authentication Rules:**
- Always read credentials at the test level using `getWikipediaCredentials()`
- Pass credentials as parameters to Page Objects (never read secrets inside POs)
- Use `WikipediaAuthPage.authenticateUser()` for full login flow

## Key Patterns Demonstrated

1. **Test constants** - No magic values, use named constants
2. **Composite methods** - Use Page Objects for multi-action workflows (`fillAccountForm`)
3. **Atomic actions** - Use Page Objects directly for single click/verify operations
4. **`@step` decorator** - Use `@step` decorators directly on Page Object methods for reporting
5. **Random data** - Use `testDataGenerator` for unique test data
6. **Credentials as parameters** - Read secrets at test level, pass to Page Objects
