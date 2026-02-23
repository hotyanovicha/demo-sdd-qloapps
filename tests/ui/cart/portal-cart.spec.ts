import { test } from '@fixtures/index';
import { getSearchDates } from '@utils/dates';
import { HOTELS } from '@constants/hotels';

test.describe('Cart', () => {
  test('Portal: Room Search: Add to Cart: Show success modal', async ({ pages }) => {
    const { checkInDay, checkOutDay } = getSearchDates();

    await pages.homePage.open();
    await pages.homePage.waitForLoad();
    await pages.homePage.fillSearchForm(HOTELS.THE_HOTEL_PRIME, checkInDay, checkOutDay);
    await pages.homePage.submitSearch();
    await pages.searchResultsPage.waitForLoad();
    await pages.searchResultsPage.selectOccupancy();
    await pages.searchResultsPage.submitOccupancy();
    await pages.searchResultsPage.bookFirstRoom();
    await pages.searchResultsPage.expectCartSuccessModalVisible();
    await pages.searchResultsPage.expectProceedToCheckoutVisible();
  });
});
