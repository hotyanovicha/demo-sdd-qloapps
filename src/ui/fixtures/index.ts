import { test as base, Browser, BrowserContext } from '@playwright/test';
import { PageManager } from '@pages/page-manager';
import { createRegistrationData } from '@src/ui/test-data/factories/user.factory';
import { RegistrationData } from '@types-ui/index';
import { getSearchDates } from '@utils/dates';
import { HOTELS } from '@constants/hotels';

type CustomFixtures = {
  pages: PageManager;
  authPages: { authPage: PageManager; user: RegistrationData };
  checkoutSummaryPage: {
    authPage: PageManager;
    user: RegistrationData;
    roomName: string;
    totalPrice: string;
  };
};

async function registerUser(
  browser: Browser,
): Promise<{ pages: PageManager; user: RegistrationData; context: BrowserContext }> {
  const user = createRegistrationData();
  const context = await browser.newContext();
  const page = await context.newPage();
  const pages = new PageManager(page);

  await pages.homePage.open();
  await pages.homePage.waitForLoad();
  await pages.homePage.goToSignIn();
  await pages.authPage.waitForLoad();
  await pages.authPage.createAccount(user.email);
  await pages.registrationPage.waitForLoad();
  await pages.registrationPage.register(user);
  await pages.myAccountPage.waitForLoad();

  return { pages, user, context };
}

export const test = base.extend<CustomFixtures>({
  pages: async ({ page }, use) => {
    await use(new PageManager(page));
  },

  authPages: async ({ browser }, use) => {
    const { pages: authPage, user, context } = await registerUser(browser);
    await use({ authPage, user });
    await context.close();
  },

  checkoutSummaryPage: async ({ browser }, use) => {
    const { pages: authPage, user, context } = await registerUser(browser);
    const { checkInDay, checkOutDay } = getSearchDates();

    await authPage.homePage.open();
    await authPage.homePage.waitForLoad();
    await authPage.homePage.fillSearchForm(HOTELS.THE_HOTEL_PRIME, checkInDay, checkOutDay);
    await authPage.homePage.submitSearch();
    await authPage.searchResultsPage.waitForLoad();
    await authPage.searchResultsPage.selectOccupancy();
    await authPage.searchResultsPage.submitOccupancy();
    await authPage.searchResultsPage.bookFirstRoom();
    await authPage.searchResultsPage.clickProceedToCheckout();
    await authPage.checkoutPage.waitForLoad();
    const roomName = await authPage.checkoutPage.getRoomName();
    const totalPrice = await authPage.checkoutPage.getTotalPrice();

    await use({ authPage, user, roomName, totalPrice });
    await context.close();
  },
});

export { expect } from '@playwright/test';
