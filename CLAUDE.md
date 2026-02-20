# Claude Code — demo-sdd-qloapps

Playwright Spec-Driven Development (SDD) framework for QloApps, optimized for AI-agent-first test automation.

---

## Before Writing Any Code

Read these documents in order. They are the single source of truth — no rules live anywhere else:

1. **[docs/maps/page-object-map.md](docs/maps/page-object-map.md)** — registry of all existing Page Objects. Check this first to avoid duplication.
2. **[docs/coding-standards.md](docs/coding-standards.md)** — authoritative source for all coding rules, naming conventions, import patterns, anti-patterns.
3. **[docs/workflow.md](docs/workflow.md)** — the 4-step agentic test development process (Analysis → Exploration → Development → Validation).

## Pattern References

| Topic | Document |
|-------|----------|
| Page Object rules | [docs/patterns/page-object.md](docs/patterns/page-object.md) |
| Locator extraction (6-step mandatory process) | [docs/patterns/locators.md](docs/patterns/locators.md) |
| Element interactions & BasePage methods | [docs/patterns/elements.md](docs/patterns/elements.md) |
| Test data management | [docs/patterns/test-data-management.md](docs/patterns/test-data-management.md) |
| Reporting (HTML Reporter, ReportPortal) | [docs/reporting.md](docs/reporting.md) |
| Tech stack & folder structure | [docs/tech-stack.md](docs/tech-stack.md) |

## Available Skills

| Skill | Trigger | Purpose |
|-------|---------|---------|
| `/develop-test` | User provides a test case or asks to automate a scenario | Executes the full 4-step workflow: analysis → browser exploration → PO/spec development → test validation |
| `/review-pr` | User asks to review a PR or mentions a PR number | Fetches the diff, runs the review checklist, posts the result as a GitHub comment |

## Key Rules (pointers only — full detail in docs above)

- **Never write code without reading `docs/maps/page-object-map.md` first**
- **All locators must be verified with `playwright-cli` before use**
- **`docs/coding-standards.md` overrules everything else if there is a conflict**
- Use path aliases (`@pages/*`, `@fixtures`, `@utils/*`) — never relative imports
- No `page.waitForTimeout()`, no `any` types, no hardcoded credentials
