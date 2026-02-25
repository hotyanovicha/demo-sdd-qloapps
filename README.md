# demo-sdd-qloapps

Playwright Spec-Driven Development (SDD) framework for QloApps hotel booking portal automation.

## Prerequisites

- Node.js 22+
- pnpm
- A running QloApps instance (see `.env` for `BASE_URL`)

## Setup

```bash
pnpm install
cp .env.example .env   # fill in credentials and BASE_URL
```

docker compose down -v && docker compose up --build -d

## Running Tests

### Local

```bash
# Headless (default)
BASE_URL=http://localhost:8080 pnpm test

# Headed (browser visible)
BASE_URL=http://localhost:8080 pnpm test:headed

# Interactive UI mode
BASE_URL=http://localhost:8080 pnpm test:ui

# Debug mode
BASE_URL=http://localhost:8080 pnpm test:debug
```

### BrowserStack

Requires `BROWSERSTACK_USERNAME` and `BROWSERSTACK_ACCESS_KEY` set in `.env`.
Platforms and local tunnel settings are configured in `browserstack.yml`.

```bash
# Run full suite on BrowserStack
pnpm test-browserstack

# Headed on BrowserStack
pnpm test:headed-browserstack

# Debug on BrowserStack
pnpm test:debug-browserstack
```

## Linting

```bash
pnpm lint          # check
pnpm lint:fix      # auto-fix
```

develop scenarios 6-8 from @docs-old/refined-specs.md use /develop-test