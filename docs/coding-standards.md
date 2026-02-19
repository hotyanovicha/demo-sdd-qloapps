# Coding Standards

TypeScript code style and naming conventions for the framework.

---

## ESLint

The project uses ESLint with TypeScript and Playwright plugins for code quality.

### Running Linter

```bash
# Check for issues
pnpm lint

# Auto-fix issues
pnpm lint:fix
```

### ESLint Rules

| Rule | Severity | Description |
|------|----------|-------------|
| `@typescript-eslint/no-unused-vars` | Error | No unused variables (prefix with `_` to ignore) |
| `@typescript-eslint/no-floating-promises` | Error | Must await or handle all promises |
| `@typescript-eslint/await-thenable` | Error | Only await promise-like values |
| `@typescript-eslint/no-explicit-any` | Warning | Avoid `any` type (allowed in decorators) |
| `no-duplicate-imports` | Error | No duplicate import statements |
| `playwright/no-wait-for-timeout` | Error | Don't use `page.waitForTimeout()` |
| `playwright/no-page-pause` | Error | Don't leave `page.pause()` in code |

### Validation Commands

```bash
# Run all checks before committing
pnpm typecheck && pnpm lint
```

---

## TypeScript Rules

- **Strict Type Checking**: No `any` unless absolutely necessary.
- **Async/Await**: Always use `async/await` for Playwright interactions.
- **Explicit Return Types**: Define return types for all methods.
- **Meaningful Names**: Descriptive variable and function names.
- **JSDoc**: Documentation for classes and public methods with non-obvious behavior. Simple self-documenting methods (like `clickLogin()`) may omit JSDoc if the method name clearly conveys intent.
- **Assertion Standards**: Use custom matchers (`toHaveStatusCode`) and schema validation helpers (`assertSchema`). Direct Playwright `expect()` assertions are **allowed** in Page Objects. General steps and assertions can be added to the base page.

---

## Documentation Standards

### API Routes Documentation

**Rule:** All API route files in `tests/api/routes/` must have:
- File-level JSDoc comment with API name and `@see` link to API documentation
- Inline JSDoc comment for each route constant describing its purpose
- `as const` assertion for type safety

**Example:**

```typescript
/**
 * Wikipedia Search API Routes
 * @see https://api.wikimedia.org/wiki/Core_REST_API
 */
export const SearchRoutes = {
    /** Search pages by content */
    SEARCH_PAGE: '/search/page',

    /** Search pages by title only */
    SEARCH_TITLE: '/search/title',
} as const;
```

### Utils Documentation

**Rule:** All utility functions in `utils/` must have JSDoc documentation with `@param` and `@returns` tags. **Do not include `@example` blocks or usage examples.**

**✅ DO:**
- Add a simple description comment before each function/class
- Include `@param` tags for all function parameters
- Include `@returns` tag describing what the function returns
- Keep descriptions concise and focused on what the function does
- Use JSDoc format for consistency

**❌ DON'T:**
- Include `@example` blocks with code samples
- Add usage examples in comments
- Include import statements in documentation
- Add multi-line example code blocks
- Skip `@param` or `@returns` tags

**Examples:**

```typescript
// ✅ GOOD: Description with @param and @returns
/**
 * Get environment configuration
 * Loads from tests/data/environment/{ENV}.json
 * @returns Environment configuration object with URLs, timeouts, and API endpoints
 */
export function getEnvironment(): Environment {
    // ...
}

/**
 * Resolve path relative to current working directory
 * @param paths - Path segments to resolve
 * @returns Resolved absolute path
 */
export function resolvePath(...paths: string[]): string {
    // ...
}

/**
 * Get a random item from an array
 * @param array - Array to pick from
 * @returns Random item from the array
 */
export function getRandomItem<T>(array: T[]): T {
    // ...
}

// ❌ BAD: Missing @param or @returns
/**
 * Get environment configuration
 */
export function getEnvironment(): Environment {
    // ...
}

// ❌ BAD: Includes examples
/**
 * Get environment configuration
 * 
 * @example
 * import { getEnvironment } from '@utils/config';
 * const env = getEnvironment();
 */
export function getEnvironment(): Environment {
    // ...
}
```

**Rationale:**
- Examples become outdated when APIs change
- Simple descriptions are easier to maintain
- Code should be self-documenting through clear function names
- Reduces documentation noise and maintenance burden

---

## Import Rules

**Always use path aliases** defined in `tsconfig.json` instead of relative paths.

### Path Aliases

| Alias | Maps To | Usage |
|-------|---------|-------|
| `@pages/*` | `tests/pages/*` | Page Objects |
| `@api` | `tests/api` | API layer (barrel export) |
| `@api/*` | `tests/api/*` | API services, routes, schemas |
| `@fixtures/*` | `tests/fixtures/*` | Test fixtures |
| `@utils/*` | `utils/*` | Utility functions |
| `@data/*` | `tests/data/*` | Test data files |

### Import Patterns

```typescript
// ✅ GOOD: Use path aliases
import { test } from '@fixtures';
import { WikipediaLoginPage } from '@pages/WikipediaLoginPage';
import { getEnvironment } from '@utils/config';
import { getWikipediaCredentials } from '@utils/secrets';
import { SearchService } from '@api/services';

// ✅ GOOD: Import from barrel exports (index.ts)
import { WikipediaMainPage, WikipediaLoginPage } from '@pages';

// ❌ BAD: Relative paths
import { test } from '../fixtures';
import { WikipediaLoginPage } from '../pages/WikipediaLoginPage';
import { getEnvironment } from '../../utils/config';
```

### When to Use Barrel Exports vs Direct Imports

- **Barrel exports** (`@pages`): When importing multiple items or when the exact file doesn't matter
- **Direct imports** (`@pages/WikipediaLoginPage`): When importing a single specific class/file

---

## Naming Conventions

| Type | Convention | Example |
|------|------------|---------|
| Classes | PascalCase | `LoginPage`, `DashboardPage` |
| Methods | camelCase | `login()`, `getErrorMessage()` |
| Variables | camelCase | `userName`, `errorText` |
| Constants | UPPER_SNAKE_CASE | `DEFAULT_TIMEOUT`, `BASE_URL` |
| Private | camelCase | `_attachScreenshot()`, `_validate()` |
| Files (Pages) | PascalCase | `LoginPage.ts` |
| Files (Utils) | kebab-case | `config.ts`, `test-data-generator.ts` |
| Files (Specs) | kebab-case | `wikipedia-login.spec.ts` |

### File Naming

| Directory | Convention | Example |
|-----------|------------|---------|
| `tests/pages/` | PascalCase | `WikipediaLoginPage.ts` |
| `tests/specs/` | kebab-case | `wikipedia-login.spec.ts` |
| `utils/` | **kebab-case** | `config.ts`, `test-data-generator.ts` |
| `tests/fixtures/` | kebab-case | `api.fixture.ts` |

### Utils File Naming (kebab-case)

All utility files use **kebab-case** (lowercase with hyphens):

```
utils/
  api-client.ts       # API request wrapper
  array-utils.ts      # Array helpers
  config.ts           # Environment configuration
  decorators.ts       # @step decorator
  json-loader.ts      # JSON file loading
  matchers.ts         # Custom expect matchers
  parse-response.ts   # Zod schema validation
  secrets.ts          # Credentials from env vars
  test-data-generator.ts  # Faker.js random data
  test-data-provider.ts   # Static JSON data
```

**Why kebab-case for utils?**
- ✅ Most common in Node.js/TypeScript ecosystem
- ✅ Avoids OS case-sensitivity issues (Windows vs Linux)
- ✅ Recommended by Google TypeScript Style Guide

> **Note:** Element wrapper classes (Button, TextBox, etc.) are deprecated. Page Objects now use Playwright `Locator` directly.

---

## Method Naming Patterns

### Actions
- `click*()` - Click elements
- `enter*()` - Input text
- `select*()` - Select from dropdowns
- `navigateTo*()` - Navigate to pages
- `submit*()` - Submit forms

### Validations
- `is*Displayed()` - Check visibility
- `is*Enabled()` - Check if enabled
- `verify*()` - Complex validations
- `get*()` - Retrieve values
- `has*()` - Check existence

### State
- `waitFor*()` - Wait conditions
- `refresh*()` - Refresh elements
- `clear*()` - Clear inputs/states

---

## Locator Strategy

**📘 Full Methodology:** [patterns/locators.md](patterns/locators.md)
**📘 Extraction Example:** [examples/locator-extraction-example.md](examples/locator-extraction-example.md)

1.  **Search First**: Always search existing Page Objects for the element before creating a new locator.
    ```bash
    grep -r "myElement" tests/pages/
    ```
2.  **Extract with MCP**: If the locator doesn't exist, use Playwright MCP for visual analysis and HTML extraction.
3.  **Priority Order**: Role+Name > ID > Data Attributes > ARIA > Unique Attributes > Partial Classes
4.  **Verify Uniqueness**: Always confirm locator returns exactly 1 element via MCP.
5.  **Always `.describe()`**: Add description to all locators for better debugging.

---

## Data Management

### Utils Structure

```
utils/
├── config.ts           → Environment config (URLs, timeouts) from JSON
├── Secrets.ts          → Credentials from env vars (.env / CI)
├── TestDataProvider.ts → High-level API for tests (uses Secrets + JsonLoader)
├── JsonLoader.ts       → Internal: loads JSON files
├── TestDataGenerator.ts → Random data generation (Faker.js)
└── ArrayUtils.ts       → Array utilities (getRandomItem, shuffle)
```

### When to Use Each

| Need | Use | Example |
|------|-----|---------|
| URLs, timeouts | `config.ts` | `getEnvironment().wikipedia.mainPageUrl` |
| Credentials | `Secrets.ts` | `getWikipediaCredentials()` |
| Static test data (JSON) | `TestDataProvider` | `getRandomArticle()` |
| Random/generated data | `TestDataGenerator` | `randomUsername()` |

### Usage Examples

```typescript
// In Tests: credentials from Secrets
import { getWikipediaCredentials } from '@utils/secrets';
const { username, password } = getWikipediaCredentials();

// In Tests: static data from TestDataProvider
import { getRandomArticle } from '@utils/test-data-provider';
const article = getRandomArticle();

// In Page Objects: URLs from config
import { getEnvironment } from '@utils/config';
await this.page.goto(getEnvironment().wikipedia.mainPageUrl);

// For random data: TestDataGenerator
import { randomUsername } from '@utils/test-data-generator';
const username = randomUsername();
```

### Utility Functions: Error Handling

**Rule:** Utility functions in `utils/` should not throw errors that would cause tests to fail.

- **Rationale**: Utilities are low-level helpers. Error handling should be done at the test layer where context is available.
- **Pattern**: Return `undefined`, `null`, or a safe default value instead of throwing.

```typescript
// ❌ BAD: Utility throws error
export function getRandomItem<T>(array: T[]): T {
    if (array.length === 0) {
        throw new Error('Cannot get random item from empty array');
    }
    const index = randomNumber(0, array.length - 1);
    return array[index];
}

// ✅ GOOD: Utility returns undefined for empty array
export function getRandomItem<T>(array: T[]): T {
    const index = randomNumber(0, array.length - 1);
    return array[index];
}
```

**Exception**: Utilities can throw for programming errors (e.g., invalid parameters that indicate a bug in test code), but not for expected runtime conditions.

---

## DRY Principles

### Search Before Creating

```bash
# Search existing Page Objects
grep -r "class.*Page" tests/pages/

# Search existing tests
grep -r "test(" tests/

# Search similar methods
grep -r "async.*login\|async.*signin" tests/pages/

# Search existing utils
grep -r "function.*" utils/
```

### Reuse Priority

1. Existing Page Objects (`tests/pages/`)
2. Existing Fixtures (`tests/fixtures/`)
3. Existing Utils (`utils/`)
4. Framework elements
5. Existing helper methods

### Reusable Methods → Utils

**Rule:** When creating functionality that could be reused across multiple files, extract it to `utils/`.

**✅ DO:**
- Check `utils/` directory first for existing functionality
- Extract reusable logic to appropriate utils file
- Use existing utils functions instead of duplicating logic
- Keep utils functions pure and simple

**❌ DON'T:**
- Duplicate file operations, data manipulation, or formatting logic
- Use Node.js built-ins directly when a utils function exists (e.g., use `fileExists()` instead of `fs.existsSync()`)
- Create utils functions that are only used in one place

**Examples:**

```typescript
// ❌ BAD: Direct Node.js API usage
import { existsSync } from 'fs';
import { resolve } from 'path';
const envPath = resolve(process.cwd(), '.env');
if (existsSync(envPath)) {
    // ...
}

// ✅ GOOD: Use utils functions
import { resolvePath, fileExists } from './file-utils';
const envPath = resolvePath('.env');
if (fileExists(envPath)) {
    // ...
}
```

### Internal Method Reuse

When a class has related methods, reuse existing methods internally:

```typescript
// ✅ GOOD: Reuse getAllArticles() inside getRandomArticle()
public getRandomArticle(): string {
    return getRandomItem(this.getAllArticles());
}

public getAllArticles(): string[] {
    const data = loadJson(JSON_PATHS.WIKIPEDIA_ARTICLES);
    return data.articles as string[];
}

// ❌ BAD: Duplicate logic
public getRandomArticle(): string {
    const data = loadJson(JSON_PATHS.WIKIPEDIA_ARTICLES);  // Duplicated!
    const articles = data.articles as string[];
    return getRandomItem(articles);
}
```

**Benefits:**
- Single point of change if data structure changes
- Reduces code duplication
- Easier to maintain and test

---

## Test Fixtures

**Rule:** Playwright fixtures should be used primarily for **authorization** or **page setup**. 

- **No API setup**: For now, do not use fixtures for API data setup.
- **Approval required**: Do not create new fixtures without explicit approval from an engineer. Use existing fixtures wherever possible.

---

## Test Structure: Preconditions

**Rule:** If a test has a **reusable precondition** (e.g., "log in as a specific user"), implement it in `test.beforeEach(...)` inside the same `test.describe(...)` block.

- **Use `beforeEach` when**: every test in the file needs the same setup (login, navigation to a starting page, common API setup).
- **Do not use `beforeEach` for**: scenarios that are specific to only one test (keep those inside the test).
- **Data rule**: constants used by all tests in the file may live at `describe` scope; test-specific constants remain inside each test.
- **Prefer API setup**: when preconditions are about data, use API setup tools rather than UI.

## Test Structure: Authentication Preconditions

**Rule:** For tests requiring authentication, use POM methods with credentials passed as parameters.

- **Read credentials at test level**: Use `getWikipediaCredentials()` from `@utils/secrets`
- **Pass to POM**: Call `wikipediaAuthPage.authenticateUser(username, password)`
- **Never read secrets inside POMs**: POMs accept credentials as parameters

**Example:**
```typescript
import { getWikipediaCredentials } from '@utils/secrets';

test('Edit article', async ({
    wikipediaAuthPage,
    wikipediaArticlePage,
    wikipediaArticleEditPage
}) => {
    const { username, password } = getWikipediaCredentials();
    await wikipediaAuthPage.authenticateUser(username, password);
    
    await wikipediaArticlePage.clickEdit();
    await wikipediaArticleEditPage.editContentAndPublish('New content');
});
```

**Benefits:**
- Clear data flow (credentials visible at test level)
- Testable with different credentials
- Follows "POMs accept data as parameters" pattern

## Random Data Generation

**Rule:** Use random data generation wherever possible instead of hardcoded values.

### When to Use Random vs Static Data

| Use Case | Use | Example |
|----------|-----|---------|
| Non-existent entities (404 tests) | Random data | `NonExistentPage${randomString()}` |
| Unique identifiers | Random data | `randomUsername()`, `randomEmail()` |
| Valid entities that must exist | Static data | `getRandomArticle()` (from valid list) |
| Configuration values | Static data | `getEnvironment().api.apiUrl` |
| Repeatable test data | Static data | JSON test data files |

**✅ DO:**
- Use `randomString()`, `randomUsername()`, etc. for unique test data
- Use random data for non-existent entities in negative test cases
- Use static data from providers for valid entities

**❌ DON'T:**
- Hardcode unique identifiers or non-existent values
- Use random data for entities that must exist
- Mix random and static data incorrectly

**Example:**
```typescript
// ✅ GOOD: Random data for non-existent page
const NON_EXISTENT_PAGE = `NonExistentPage${randomString()}`;

// ❌ BAD: Hardcoded value
const NON_EXISTENT_PAGE = 'NonExistentPage12345XYZ';

// ✅ GOOD: Static data for valid article
const PAGE_TITLE = getRandomArticle(); // From valid articles list
```

---

## Magic Values / Test Constants

**Rule:** Never use unexplained literal values (magic numbers/strings) directly in tests. Extract them to named constants.

### Placement Strategy

| Scope | Location | Example |
|-------|----------|---------|
| Single test only | Inside the test function | `const SEARCH_TERM = 'images';` |
| Single test file | Top of `test.describe` block | `const MIN_PASSWORD_LENGTH = 12;` |
| Page Object only | Top of Page Object file | `const LOGIN_PAGE_TITLE = /Log in/i;` |
| Reusable across services/builders | `tests/api/constants/*.ts` | `GrantType.CLIENT_CREDENTIALS` |
| Multiple test files | JSON test data file | `tests/data/config.json` |

> **Rule:** If a constant is only used within one specific test, place it directly inside that test function to keep scope localized.

### Page Object-Specific Constants

**Rule:** If a constant is specific to a Page Object and only used within that Page Object, store it as a constant at the top of the Page Object file (before the class declaration).

**Examples:**

```typescript
// ✅ GOOD: Page Object-specific constant
const LOGIN_PAGE_TITLE = /Log in/i;

export class WikipediaLoginPage extends BasePage {
    async verifyLoginPageTitle(): Promise<void> {
        await this.verifyPageTitle(LOGIN_PAGE_TITLE);
    }
}

// ❌ BAD: Magic value in method
async verifyLoginPageTitle(): Promise<void> {
    await this.verifyPageTitle(/Log in/i);
}
```

**When to use other approaches:**
- If constant is used by multiple Page Objects → Consider test data provider
- If constant is used across multiple test files → Use test data provider (JSON)

### Reusable Constants Rule

**Rule:** If a constant value can be used by multiple methods, services, builders, or across different test files, it must be placed in the appropriate constants file.

#### API Constants Location

| Type | Location | Example |
|------|----------|---------|
| HTTP Status Codes | `tests/api/constants/StatusCode.ts` | `StatusCode.OK`, `StatusCode.NOT_FOUND` |
| HTTP Headers/Content Types | `tests/api/constants/HttpConstants.ts` | `Headers.AUTHORIZATION`, `ContentType.JSON` |
| OAuth/Grant Types | `tests/api/constants/OAuthConstants.ts` | `GrantType.CLIENT_CREDENTIALS` |
| Domain-specific constants | `tests/api/constants/*.ts` | Create new file as needed |

#### Examples

```typescript
// ❌ BAD: Magic values with no context
const password = randomPassword(12);
await pageObject.verifyPopup('Click on your username to visit your homepage.');
grant_type: 'client_credentials'

// ✅ GOOD: Named constants explain the meaning
const MIN_PASSWORD_LENGTH = 12;
const GET_STARTED_POPUP_MESSAGE = 'Click on your username to visit your homepage.';
grant_type: GrantType.CLIENT_CREDENTIALS

const password = randomPassword(MIN_PASSWORD_LENGTH);
await pageObject.verifyPopup(GET_STARTED_POPUP_MESSAGE);
```

#### When to Create Constants Files

Create a new constants file in `tests/api/constants/` when:
- Value is used by multiple API services or builders
- Value represents a standard protocol constant (OAuth, HTTP, etc.)
- Value is part of an API specification or standard
- Value needs to be imported and reused across different API-related files

**Example:**
```typescript
// tests/api/constants/OAuthConstants.ts
export const GrantType = {
    CLIENT_CREDENTIALS: 'client_credentials',
    AUTHORIZATION_CODE: 'authorization_code',
    REFRESH_TOKEN: 'refresh_token',
} as const;

// Usage in builders/services
import { GrantType } from '@api/constants';
grant_type: GrantType.CLIENT_CREDENTIALS
```

### When to Use JSON Test Data

Move constants to `tests/data/*.json` when:
- Value is used across multiple spec files
- Value represents shared configuration
- Value may change per environment

---

## Navigation Pattern

**Rule:** Never use `page.goto()` directly in Tests. Navigation must go through Page Object `navigate()` methods.

| Layer | Can Navigate? | How |
|-------|---------------|-----|
| Test (spec) | ❌ No | Calls Page Object `navigate()` |
| Page Object | ✅ Yes | Uses `page.goto()` with URL from environment config |

```typescript
// ❌ BAD: Direct page.goto in Specs
test('Nav', async ({ page }) => {
    await page.goto(getEnvironment().wikipedia.mainPageUrl);
});

// ✅ GOOD: Specs call Page Object navigate()
test('Nav', async ({ wikipediaMainPage }) => {
    await wikipediaMainPage.navigate();
});
```

---

## Assertions: URL Checks

**Rule:** While unique elements on the page should be the primary way to assert a page has loaded correctly, agents **are allowed** to assert or validate URLs if it is required for the specific test scenario.

- **Primary mechanism**: Assert via stable UI signals (page heading, key container visibility, unique content, and/or page title).
- **Secondary mechanism**: URL assertions, when necessary.

## Test Comments

**Rule:** Do not add explanatory comments in test files that describe what the code does.

**❌ DON'T:**
- Add comments explaining architectural patterns (e.g., `// PO: atomic action`)
- Add comments describing what Zod validates (e.g., `// Zod validates: ...`)
- Add comments explaining what assertions do (e.g., `// Schema enforces: ...`)
- Add comments describing obvious actions (e.g., `// Get access token`, `// Use token for request`)

**✅ DO:**
- Let the code be self-documenting through clear method names
- Use descriptive test names that explain the test purpose
- Use descriptive variable names that explain their purpose
- Add comments only for complex business logic or non-obvious workarounds

**Rationale:**
- Comments become outdated when code changes
- Self-documenting code is easier to maintain
- Test names and method names should be clear enough
- Comments add noise without adding value

**Example:**
```typescript
// ❌ BAD: Unnecessary comments
// PO: business action (navigate + verify)
await wikipediaMainPage.openDirectlyAndVerify();

// PO: single atomic click
await wikipediaNavigationMenu.clickLogIn();

// Zod validates: access_token is non-empty string
await assertSchema(response, AccessTokenSchema, 'Access Token Response');

// ✅ GOOD: Self-documenting code
await wikipediaMainPage.openDirectlyAndVerify();
await wikipediaNavigationMenu.clickLogIn();
await assertSchema(response, AccessTokenSchema, 'Access Token Response');
```

---

## Anti-Patterns

❌ Duplicate Page Objects → Extend existing
❌ Hardcoded credentials → Use `getWikipediaCredentials()`
❌ Hardcoded URLs → Use `getEnvironment()`
❌ Magic numbers/strings → Extract to named constants
❌ Direct Playwright calls in specs → Use POs
❌ `page.goto()` in Tests → Use Page Object `navigate()`
❌ `page.waitForTimeout()` → Use `waitForSelector` or `waitForLoadState`
❌ Ignoring Promises → Always `await` async calls
❌ Import Secrets in tests → Use TestDataProvider instead
❌ **Explanatory comments in tests** → Let code be self-documenting
❌ **Throwing errors in utility functions** → Return undefined/null instead
❌ **Direct expect() in Spec for common assertions** → Common repeatable assertions should be embedded as methods in the POM for reuse.
❌ **Duplicate locators for same element** → ONE verified locator per element
❌ **Unused locators or methods** → Remove unused code immediately
❌ **POMs reading secrets internally** → Accept credentials as parameters, read secrets at test level
❌ **Missing JSDoc on complex Page Object methods** → Methods with non-obvious behavior must have JSDoc comments (simple self-documenting methods like `clickLogin()` may omit JSDoc)
❌ **Magic values in Page Objects** → Store Page Object-specific constants at top of file (page titles, specific text values)
❌ **Examples in utils documentation** → Use simple descriptions only, no `@example` blocks
❌ **Missing @param/@returns in utils docs** → All utils functions must have `@param` and `@returns` tags
❌ **Missing API Routes documentation** → All route files must have file-level JSDoc with `@see` and inline route comments
❌ **Bypassing schema validation** → Never use `response.json()` directly; always use `assertSchema()`
❌ **Duplicate tests** → Each test must be unique; no tests with identical assertions
❌ **Unused imports** → Remove all unused imports immediately
❌ **Relative imports when alias exists** → Use path aliases (`@utils/config` not `../../utils/config`)
❌ **Missing barrel exports** → All new modules must be exported from their `index.ts`

---

## Barrel Exports (index.ts)

**Rule:** All modules (services, pages) must be exported from their directory's `index.ts` barrel file.

**Why:**
- Enables clean imports: `import { X, Y, Z } from '@api/services'`
- Prevents import path inconsistencies
- Makes refactoring easier

**Checklist when creating new modules:**
1. ✅ Create the module file (e.g., `NewService.ts`)
2. ✅ Add export to barrel file (e.g., `tests/api/services/index.ts`)
3. ✅ Import from barrel in consuming files

**Example:**
```typescript
// tests/api/services/index.ts
export { SearchService } from './SearchService';
export { PageService } from './PageService';
export { AuthService } from './AuthService';  // Don't forget new services!

// Usage - import from barrel
import { SearchService, AuthService, PageService } from '@api/services';
```

---

## Schema Validation Consistency

**Rule:** Always use `assertSchema()` for API response validation. Never bypass with `response.json()`.

**Why:**
- Ensures runtime type safety
- Provides consistent error messages
- Catches API contract violations early

**✅ CORRECT:**
```typescript
const authResponse = await authService.getMetaUserAccessToken();
await expect(authResponse).toHaveStatusCode(StatusCode.OK);

const authData = await assertSchema(authResponse, AccessTokenSchema, 'Access Token Response');
const accessToken = authData.access_token;
```

**❌ WRONG:**
```typescript
const authResponse = await authService.getMetaUserAccessToken();
await expect(authResponse).toHaveStatusCode(StatusCode.OK);

const authData = await authResponse.json();  // NO! Bypasses validation
const accessToken = authData.access_token;
```

---

## Environment Configuration

**Rule:** Environment configuration files must have consistent naming.

### Naming Convention
- File name determines the environment: `dev.json`, `prod.json`, `staging.json`
- The `"environment"` field inside must match the file name

**✅ CORRECT:**
```json
// tests/data/environment/dev.json
{
    "environment": "dev",
    "baseUrl": "https://test.wikipedia.org"
}
```

**❌ WRONG:**
```json
// tests/data/environment/dev.json
{
    "environment": "test",  // Mismatch! Should be "dev"
    "baseUrl": "https://test.wikipedia.org"
}
```

### Required Files
- `.env.example` - Template for environment variables (committed to repo)
- `.env` - Actual secrets (NEVER committed, in `.gitignore`)

---

## TypeScript Global Type Declarations

**Rule:** Global type declaration files (`*.d.ts`) that augment existing types must include `export {}` at the end.

**Why:** Without `export {}`, TypeScript treats the file as a script (not a module), and global augmentations won't work correctly.

**✅ CORRECT:**
```typescript
// utils/global.d.ts
import { APIResponse } from '@playwright/test';

declare global {
    namespace PlaywrightTest {
        interface Matchers<R> {
            toHaveStatusCode(expectedCode: number): Promise<R>;
        }
    }
}

export {};  // Required for global augmentation!
```

**❌ WRONG:**
```typescript
// Missing export {} - won't work correctly
declare global {
    namespace PlaywrightTest {
        interface Matchers<R> {
            toHaveStatusCode(expectedCode: number): Promise<R>;
        }
    }
}
```

---

## Playwright Configuration

**Rule:** Configure `headless` mode based on CI environment for optimal developer experience.

```typescript
// playwright.config.ts
projects: [
    {
      name: 'chromium',
      use: {
        ...devices['Desktop Chrome'],
        headless: !!process.env.CI,  // Headed locally, headless in CI
      }
    },
]
```

**Benefits:**
- Local development: Browser visible for debugging
- CI pipeline: Headless for faster execution

---

## No Duplicate Tests

**Rule:** Each test must be unique. Do not create tests with identical assertions.

**Why:**
- Wastes execution time
- Creates maintenance burden
- Indicates unclear test intent

**How to identify duplicates:**
- Same endpoint + same assertions = duplicate
- If two tests test the same thing, merge or remove one

**Example of duplicate (BAD):**
```typescript
test('Verify access token returns valid response', async ({ authService }) => {
    const response = await authService.getMetaUserAccessToken();
    await expect(response).toHaveStatusCode(StatusCode.OK);
    await assertSchema(response, AccessTokenSchema, 'Access Token Response');
});

// This is a DUPLICATE - remove it!
test('Verify access token response structure', async ({ authService }) => {
    const response = await authService.getMetaUserAccessToken();
    await expect(response).toHaveStatusCode(StatusCode.OK);
    await assertSchema(response, AccessTokenSchema, 'Access Token Response');
});
```

---

**See also:**
- [patterns/page-object.md](patterns/page-object.md) - Page Object rules
- [maps/page-object-map.md](maps/page-object-map.md) - Track existing code
