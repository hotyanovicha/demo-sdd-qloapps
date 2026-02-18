import { test as base, expect } from '@playwright/test';
import { LoginPage } from '@pages/auth/login.page';

type Pages = {
  loginPage: LoginPage;
};

export const test = base.extend<Pages>({
  loginPage: async ({ page }, use) => {
    await use(new LoginPage(page));
  },
});

export { expect };
