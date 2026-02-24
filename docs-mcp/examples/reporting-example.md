# Playwright Reporting Example

This example demonstrates how to use Playwright's built-in reporting features with the SDD framework.

**📘 Full Documentation:** [reporting.md](../reporting.md)

---

## 1. Configuration

The framework is configured in `playwright.config.ts` with HTML Reporter and ReportPortal:

```typescript
import { defineConfig, devices } from '@playwright/test';
import { config } from 'dotenv';

config();

const rpConfig = {
  apiKey: process.env.REPORTPORTAL_API_KEY,
  endpoint: process.env.REPORTPORTAL_ENDPOINT,
  project: process.env.REPORTPORTAL_PROJECT,
  launch: 'Playwright SDD Tests',
  attributes: [
    { key: 'framework', value: 'playwright' },
    { key: 'env', value: process.env.ENV || 'dev' }
  ],
  description: 'Automated tests from Playwright SDD Framework',
  includeTestSteps: true,  // @step decorators appear as nested steps
};

export default defineConfig({
  reporter: [
    ['html', { outputFolder: 'playwright-report' }],
    ['@reportportal/agent-js-playwright', rpConfig]
  ],
  use: {
    trace: 'on',
    screenshot: 'on',
    video: 'on',
  },
});
```

---

## 2. Using `@step` Decorator for Better Reports

The `@step` decorator creates readable, nested steps in reports. **You can apply this decorator to Page Object methods.**

### Page Object Example

```typescript
import { step } from '@utils/decorators';
import { BasePage } from './BasePage';
import { Locator, Page } from '@playwright/test';

export class WikipediaLoginPage extends BasePage {
    private readonly usernameInput: Locator;
    private readonly passwordInput: Locator;
    private readonly loginButton: Locator;

    constructor(page: Page) {
        super(page, page.locator('#userloginForm'), 'WikipediaLoginPage');
        this.usernameInput = page.locator('#wpName1');
        this.passwordInput = page.locator('#wpPassword1');
        this.loginButton = page.locator('#wpLoginAttempt');
    }

    /**
     * Perform login with credentials
     */
    @step('Login with username: {0}')
    async login(username: string, password: string): Promise<void> {
        await this.usernameInput.fill(username);
        await this.passwordInput.fill(password);
        await this.loginButton.click();
    }
}
```

### How It Appears in Reports

**HTML Report:**
```
✓ Login with username: TestUser
  → enterUsername("TestUser")
  → enterPassword("****")
  → clickLogin()

✓ Verify user logged in as: TestUser
  → verifyUsernameDisplayed("TestUser")
  → verifyLogInLinkIsHidden()
```

**ReportPortal:**
- Steps appear as nested child items
- Parameters are substituted in step names
- Failures show exact step that failed

---

## 3. Manual Screenshot Attachment

Playwright attaches screenshots automatically, but you can add custom screenshots:

```typescript
import { test, Page } from '@playwright/test';
import { step } from '@utils/decorators';

export class DebugSteps {
    constructor(private readonly page: Page) {}

    /**
     * Capture and attach screenshot to report
     */
    @step('Take screenshot: {0}')
    async takeScreenshot(name: string): Promise<void> {
        const screenshot = await this.page.screenshot();
        await test.info().attach(name, {
            body: screenshot,
            contentType: 'image/png'
        });
    }

    /**
     * Attach text content to report
     */
    @step('Attach log: {0}')
    async attachLog(name: string, content: string): Promise<void> {
        await test.info().attach(name, {
            body: content,
            contentType: 'text/plain'
        });
    }
}
```

---

## 4. Test Example with Reporting

```typescript
import { test } from '@fixtures';
import { getCredentials } from '@utils/config';

test.describe('Wikipedia Login', () => {
    test('Verify successful login creates session', async ({
        wikipediaLoginPage,
        wikipediaMainPage
    }) => {
        const credentials = getCredentials();

        await wikipediaMainPage.navigate();
        await wikipediaLoginPage.navigateToLogin();
        await wikipediaLoginPage.login(
            credentials.username,
            credentials.password
        );
        await wikipediaMainPage.verifyLoggedIn(credentials.username);
    });
});
```

**Report Output:**
```
Wikipedia Login > Verify successful login creates session
├── navigate()
├── Navigate to login page
│   └── clickLogIn()
├── Login with username: WikiTestUser
│   ├── enterUsername("WikiTestUser")
│   ├── enterPassword("****")
│   └── clickLogin()
└── Verify user logged in as: WikiTestUser
    ├── verifyUsernameDisplayed("WikiTestUser")
    └── verifyLogInLinkIsHidden()
```

---

## 5. Viewing Reports

### Local HTML Report

```bash
# Run tests
pnpm test

# Open HTML report
npx playwright show-report
```

**Report Location:** `playwright-report/index.html`

### Report Features

| Feature | Description |
|---------|-------------|
| **Test Timeline** | Execution order with durations |
| **Nested Steps** | `@step` decorators as hierarchy |
| **Screenshots** | Attached for all tests (configurable) |
| **Videos** | Full recording of test execution |
| **Traces** | DOM snapshots, network logs, console |
| **Filtering** | By status, project, or search term |

---

## 6. CI/CD Integration

### Jenkins Pipeline

```groovy
pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                withCredentials([
                    string(credentialsId: 'reportportal-api-key', variable: 'REPORTPORTAL_API_KEY'),
                    string(credentialsId: 'reportportal-endpoint', variable: 'REPORTPORTAL_ENDPOINT'),
                    string(credentialsId: 'reportportal-project', variable: 'REPORTPORTAL_PROJECT')
                ]) {
                    sh 'pnpm install'
                    sh 'pnpm exec playwright install --with-deps'
                    sh 'pnpm test'
                }
            }
        }
    }

    post {
        always {
            publishHTML([
                allowMissing: false,
                alwaysLinkToLastBuild: true,
                keepAll: true,
                reportDir: 'playwright-report',
                reportFiles: 'index.html',
                reportName: 'Playwright Report'
            ])
        }
    }
}
```

### GitHub Actions

```yaml
- name: Run Tests
  run: pnpm test
  env:
    REPORTPORTAL_ENDPOINT: ${{ secrets.RP_ENDPOINT }}
    REPORTPORTAL_PROJECT: ${{ secrets.RP_PROJECT }}
    REPORTPORTAL_API_KEY: ${{ secrets.RP_API_KEY }}

- name: Upload Playwright Report
  uses: actions/upload-artifact@v4
  if: always()
  with:
    name: playwright-report
    path: playwright-report/
    retention-days: 30
```

---

## 7. ReportPortal Dashboard

When ReportPortal is configured, reports are automatically sent:

| Feature | Description |
|---------|-------------|
| **Launches** | Each test run as a launch |
| **Nested Steps** | `@step` as child items |
| **Defect Tracking** | Link failures to issues |
| **ML Analysis** | Auto-group similar failures |
| **Trends** | Historical pass/fail charts |

### Environment Variables

```bash
# .env file
REPORTPORTAL_ENDPOINT=http://your-reportportal:8080/api/v2
REPORTPORTAL_PROJECT=your-project
REPORTPORTAL_API_KEY=your-api-key
```

---

## Best Practices

### ✅ Do's

- Use `@step` decorator on complex Page Object methods
- Use descriptive step names with parameter placeholders (`{0}`, `{1}`)
- Let Playwright handle screenshots/videos automatically
- Archive reports in CI/CD pipelines

### ❌ Don'ts

- Skip `@step` decorator on complex workflows
- Use vague step names ("Do something")
- Manually take screenshots for every action (only for debugging)
- Forget to configure ReportPortal credentials in CI

---

**📘 See also:**
- [reporting.md](../reporting.md) - Full reporting documentation

- [Jenkinsfile](../../Jenkinsfile) - CI/CD configuration
