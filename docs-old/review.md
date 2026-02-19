# PR Review: Auth & Registration Flow

**Branch**: `main` (local uncommitted changes)
**Scope**: New auth pages, registration page, home page, factory, fixtures, spec, config

**Changes**: New files — `auth.page.ts`, `my-account.page.ts`, `registration.page.ts`, `home.page.ts`, `header.component.ts`, `user.factory.ts`, `tests/ui/auth/auth.spec.ts`; Modified — `types/index.ts`, `urls.ts`, `fixtures/index.ts`, `playwright.config.ts`

---

## 🔴 Blockers

### 1. `force: true` on radio button — masks real UI issues

**File:** `registration.page.ts:21`

```ts
await titleRadio.check({ force: true });
```

`force: true` bypasses Playwright's actionability checks (visibility, enabled state, not covered). If the radio is hidden by a custom styled component, the test will silently interact with a non-visible element — hiding a real product bug. Remove `force` and investigate why it was needed.

---

## ⚠️ Issues

| File:Line | Issue | Suggestion |
|-----------|-------|------------|
| `auth.spec.ts:27` | Commented-out assertion `// await myAccountPage.expectSuccessAlert()` — dead code committed | Remove or restore the assertion. Don't commit commented-out code. |
| `auth.spec.ts:24` | Direct `expect(page).toHaveURL()` assertion in test body when `myAccountPage.expectUrl()` already exists | Replace with `await myAccountPage.expectUrl()` to stay DRY |
| `auth.spec.ts:1-29` | Test body duplicates the entire `auth` fixture flow (lines 38–48 of `fixtures/index.ts`) verbatim — the fixture exists but is never used | Either use the `auth` fixture in this test, or delete the fixture. Having both is misleading. |
| `my-account.page.ts:24` | `_lastName` is accepted but never used — the underscore prefix signals "intentionally unused" but the signature is still misleading | Remove `_lastName` from the signature; if full-name verification is needed, add it properly |
| `my-account.page.ts:1` | `Locator` imported but never referenced | Remove unused import |
| `registration.page.ts:1` | `Locator` imported but never referenced | Remove unused import |
| `home.page.ts:1` | `Locator` imported but never referenced | Remove unused import |
| `user.factory.ts:6` | `title` is always hardcoded `'Mr'` — `Mrs` title path is never exercised | Use `faker.helpers.arrayElement(['Mr', 'Mrs'] as const)` for coverage |
| `user.factory.ts:9` | `email: \`test-${Date.now()}@example.com\`` — `Date.now()` can collide if two workers tick in the same millisecond | Use `faker.internet.email()` or `crypto.randomUUID()` sub-segment for guaranteed uniqueness |
| `playwright.config.ts:23` | `workers: process.env.CI ? 1 : 1` — both branches return `1`, ternary is dead code | If parallel local runs aren't intended, just write `workers: 1`. Otherwise fix the local value. |
| `playwright.config.ts:15-16` | `fullyParallel: true` but `workers: 1` — parallelism is declared but impossible with 1 worker | Align the two: either increase `workers` or set `fullyParallel: false` |
| `header.component.ts` | `HeaderComponent` is defined but never imported or used anywhere in the codebase | Delete it or wire it up. Dead components add noise. |
| `header.component.ts:4` | Debug comment `// Locators populated via playwright-cli exploration` left in production code | Remove the comment |
| `types/index.ts:1-4` | `User` interface is exported but never imported or used anywhere | Remove it, or use it where `RegistrationData` could derive from it |
| `fixtures/index.ts:38-48` | `auth` fixture registers a user but has no teardown — registered users accumulate in the system after every test run | Add teardown (API call to delete the user, or a DB cleanup hook) after `use(data)` |

---

## ⚠️ Selector Fragility (Non-Blocking but Important)

Several locators rely on CSS IDs and class names that are brittle and will break on any template/theme change:

| File:Line | Current selector | Preferred alternative |
|-----------|------------------|-----------------------|
| `auth.page.ts:9` | `locator('input#email_create')` | `getByLabel(/create.*email/i)` or `getByPlaceholder(...)` |
| `auth.page.ts:10` | `locator('button#SubmitCreate')` | `getByRole('button', { name: /create an account/i })` |
| `registration.page.ts:7` | `locator('input#id_gender1')` | `getByRole('radio', { name: /mr/i })` |
| `registration.page.ts:8` | `locator('input#id_gender2')` | `getByRole('radio', { name: /mrs/i })` |
| `registration.page.ts:9` | `locator('input#customer_firstname')` | `getByLabel(/first name/i)` |
| `registration.page.ts:10` | `locator('input#customer_lastname')` | `getByLabel(/last name/i)` |
| `registration.page.ts:11` | `locator('input#passwd')` | `getByLabel(/password/i)` |
| `my-account.page.ts:6` | `locator('.alert-success')` | `getByRole('alert')` or `getByText(/your account has been created/i)` |
| `home.page.ts:5` | `locator('#header')` | `getByRole('banner')` (HTML `<header>` maps to `banner`) |

---

## 👀 For Your Review

- **`RegistrationData.email` split responsibility** at `types/index.ts:12` + `auth.page.ts:22-24` — `email` is in the type but `registration.page.ts:register()` doesn't use it (it was already entered on the auth page). The two-step email flow is implicitly coupled. Consider if `createAccount(email)` and `register(data)` should be documented or merged into a single action.
- **`MyAccountPage.expectUrl()`** at `my-account.page.ts:20` — method takes no parameters but it asserts a specific URL pattern. If tested against different environments with different base URLs, the regex `/my-account/` should be fine; just verify it matches staging/prod paths too.
- **`auth` fixture scope** at `fixtures/index.ts:38` — currently `'test'` scope (default). If you eventually need a pre-created user shared across tests in a `describe`, you'd need `'worker'` scope. Note for future.

---

## 💡 Discussion Points

- **`auth` fixture vs manual setup in spec** — The `auth` fixture was built to encapsulate the registration flow, but `auth.spec.ts` reimplements it manually. Pick one pattern and enforce it. Recommendation: use the fixture in the test and delete the manual duplication.

- **`User` vs `RegistrationData`** — `User` has only `email` + `password`, which is the login credential subset of `RegistrationData`. Consider whether `User` should be derived: `type User = Pick<RegistrationData, 'email' | 'password'>` — keeps things DRY and tied to the source of truth.

- **Factory randomness coverage** — `createRegistrationData()` always produces a `'Mr'` title and a 10-digit numeric phone. If the app has validation rules for phone format or gender-specific flows, these fixed values give false confidence. Discuss whether parameterized factories (e.g., `createRegistrationData({ title: 'Mrs' })`) are needed.

---

## 📝 Git Hygiene

**Recent commits to note:**

| Current | Suggested improvement |
|---------|-----------------------|
| `docs: Replace manual test cases with refined specifications and update DOM selectors.` | Fine, but trailing period is non-standard in commit titles |
| `feat: add initial manual test cases and DOM selectors documentation for the Qloapps application.` | Same — remove trailing period from commit subject |
| `feat: initialize Playwright E2E testing framework, page object models, login tests, and AI-assisted development tooling.` | Too broad — one commit shouldn't span framework init + page objects + tests + tooling. Consider splitting in future PRs. |

---

✅ **Good:** `BasePage` abstraction with `waitForLoad()` pattern, fixture composition approach, `as const` in `URLS`, `dotenv` wired via `playwright.config.ts`, `@step`-ready POM structure, factory using `@faker-js/faker`, kebab-case file naming, return types declared on all exported methods, no `any` usage, test naming follows `should [outcome] when [scenario]` pattern.

**Verdict:** Changes requested — fix blockers + dead code + the fixture/test duplication before merge.

---

*Review based on local uncommitted changes — no open PR found at time of review.*

🤖 Generated with [Claude Code](https://claude.com/claude-code)
