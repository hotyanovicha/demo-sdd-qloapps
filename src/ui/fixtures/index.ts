import { test as base } from '@playwright/test';
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

export const test = base.extend<CustomFixtures>({
  pages: async ({ page }, use) => {
    await use(new PageManager(page));
  },

  authPages: async ({ browser }, use) => {
    const user = createRegistrationData();
    const context = await browser.newContext();
    const page = await context.newPage();
    const authPage = new PageManager(page);

    await authPage.homePage.open();
    await authPage.homePage.waitForLoad();
    await authPage.homePage.goToSignIn();
    await authPage.authPage.waitForLoad();
    await authPage.authPage.createAccount(user.email);
    await authPage.registrationPage.waitForLoad();
    await authPage.registrationPage.register(user);
    await authPage.myAccountPage.waitForLoad();
    await use({ authPage, user });
    await context.close();
  },

  checkoutSummaryPage: async ({ authPages }, use) => {
    const { authPage, user } = authPages;
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
  },
});

export { expect } from '@playwright/test';
