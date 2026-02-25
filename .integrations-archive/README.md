# Archived Integrations

This folder preserves the original integration configs that were in use before the pipeline was simplified.

## Contents

- **azure-pipelines.full.yml** — The full pipeline with two parallel jobs:
  - `Test` — Azure Playwright cloud execution with Azure report + Report Portal
  - `TestBrowserStack` — BrowserStack execution
- **playwright.service.config.ts** — Azure Playwright cloud test config (extends `playwright.config.ts`)
- **docker-compose-reportportal.yml** — Docker Compose for self-hosted Report Portal

## Why Archived

The pipeline was simplified on 2026-02-25 to:
- Run tests only on the Azure agent (locally in Docker)
- Report results only to BrowserStack
- Use only Chrome browser
- Remove Azure Playwright cloud, Azure report, and Report Portal
