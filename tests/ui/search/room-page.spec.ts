import { test } from '@fixtures/index';
import { getSearchDates } from '@utils/dates';
import { HOTELS } from '@constants/hotels';

test.describe('Room Page', () => {
  test('Portal: Room Page: Exceed max adult occupancy: Error is shown', async ({ pages }) => {
    const { checkInDay, checkOutDay } = getSearchDates();
    const MAX_ADULTS = '2';
    const EXPECTED_OCCUPANCY = '2 Adults, 1 Room';

    await pages.homePage.open();
    await pages.homePage.waitForLoad();
    await pages.homePage.fillSearchForm(HOTELS.THE_HOTEL_PRIME, checkInDay, checkOutDay);
    await pages.homePage.submitSearch();
    await pages.searchResultsPage.waitForLoad();
    await pages.searchResultsPage.selectOccupancy();
    await pages.searchResultsPage.incrementAdults();
    await pages.searchResultsPage.expectAdultOccupancyError();
    await pages.searchResultsPage.expectAdultCount(MAX_ADULTS);
    await pages.searchResultsPage.submitOccupancy();
    await pages.searchResultsPage.expectOccupancyButtonText(EXPECTED_OCCUPANCY);
  });
});
