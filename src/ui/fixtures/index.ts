import { test as base } from '@playwright/test';
import { PageManager } from '@pages/page-manager';
import { createRegistrationData } from '@src/ui/test-data/factories/user.factory';
import { RegistrationData } from '@types-ui/index';
import { URLS } from '@constants/urls';

type CustomFixtures = {
  pages: PageManager;
  authPages: {authPage: PageManager, user: RegistrationData};
};

export const test = base.extend<CustomFixtures>({
  pages: async ({ page }, use) => {
    await use(new PageManager(page));
  },

  authPages: async ({ browser }, use) => {
    const user = createRegistrationData();
    const context = await browser.newContext();
    const page = await context.newPage();
    const authPage = new PageManager(page);

    await authPage.homePage.goto(URLS.HOME);
    await authPage.homePage.waitForLoad();
    await authPage.homePage.goToSignIn();
    await authPage.authPage.waitForLoad();
    await authPage.authPage.createAccount(user.email);
    await authPage.registrationPage.waitForLoad();
    await authPage.registrationPage.register(user);
    await authPage.myAccountPage.waitForLoad();
    await use({authPage,user});
    await context.close();

  },
});

export { expect } from '@playwright/test';
