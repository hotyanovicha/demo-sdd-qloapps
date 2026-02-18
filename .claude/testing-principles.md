# Testing Principles — demo-sdd-qloapps

## File Naming
- **kebab-case** for all files
- `.page.ts` — page objects (`login.page.ts`)
- `.component.ts` — reusable UI components (`header.component.ts`)
- `.types.ts` — type definitions (`user.types.ts`)
- `.spec.ts` — test files (`login.spec.ts`)
- `.fixture.ts` — test fixtures
- `.factory.ts` — data factories
- No suffix for utilities (`convert-data.ts`)

## Folder Structure
```
src/ui/
├── pages/
│   ├── base.page.ts          # Abstract base for all pages
│   ├── [domain]/             # e.g. auth/, booking/, property/
│   │   └── [name].page.ts
│   └── components/           # Shared UI components
│       └── [name].component.ts
├── types/
│   └── index.ts              # Shared TypeScript types
└── test-data/
    └── constants/            # Test data (one domain per file)
        └── urls.ts

tests/
├── fixtures/
│   └── index.ts              # Extends Playwright test with page objects
└── ui/
    ├── e2e/                  # End-to-end flows
    └── [domain]/             # Mirrors src/ui/pages/[domain]/
        └── [name].spec.ts
```

## Page Object Rules
- Extend `BasePage` — use `waitForLoad()` for navigation
- **Private/protected locators** — never expose raw `Locator` unless needed for assertion flexibility
- **No assertions in page objects** (SRP) — assertions belong in specs
- **Action-oriented method names** — `submit()` not `clickSubmit()`, `goBack()` not `clickBack()`

| Prefix | Return | Purpose |
|--------|--------|---------|
| `waitFor*` | `Promise<this>` | Wait for condition, enable chaining |
| `expect*` | `Promise<void>` | Thin Playwright `expect` wrapper |
| `assert*` | `Promise<void>` | Business-logic assertion |
| `is*` / `has*` | `Promise<boolean>` | Query state |
| `get*` | `Promise<string\|number\|…>` | Extract value from page |
| verb | `Promise<void>` | User intent action |

## Test Rules
- **Naming**: `should [outcome] when [scenario]`
- **Isolation**: each test creates its own data — no shared mutable state
- **No `page.waitForTimeout()`** — use auto-waiting locators or explicit conditions
- **No hardcoded credentials** — use `process.env.*`
- **Fixture injection** — never `new LoginPage(page)` in specs; use fixtures

## Path Aliases (tsconfig)
| Alias | Maps to |
|-------|---------|
| `@pages/*` | `src/ui/pages/*` |
| `@fixtures/*` | `tests/fixtures/*` |
| `@constants/*` | `src/ui/test-data/constants/*` |
| `@types-ui/*` | `src/ui/types/*` |
| `@src/*` | `src/*` |

## Constants
- `UPPER_CASE` names — `URLS`, `TIMEOUTS`
- `as const` for literal type inference
- One domain per file — `urls.ts` for URLs, `timeouts.ts` for timeouts

## Types
- No `enum` — use `as const` string unions
- No `any` — use generics or `unknown`
- Shared types in `src/ui/types/` — page-local types may stay in the page file until shared
- Explicit return types on all exported functions
