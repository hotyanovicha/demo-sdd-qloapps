import js from "@eslint/js";
import tseslint from "typescript-eslint";
import playwright from "eslint-plugin-playwright";
import prettierRecommended from "eslint-plugin-prettier/recommended";

export default tseslint.config(
  js.configs.recommended,
  ...tseslint.configs.recommended,
  {
    ...playwright.configs["flat/recommended"],
    files: ["tests/**"],
  },
  prettierRecommended,
  {
    rules: {
      "no-console": "warn",
      "playwright/no-skipped-test": "warn",
    },
  },
  {
    ignores: ["node_modules/", "dist/", "test-results/", "playwright-report/"],
  }
);
