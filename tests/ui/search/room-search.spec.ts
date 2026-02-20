import { test } from '@fixtures/index';
import { getSearchDates } from '@utils/dates';

test.describe('Room Search', () => {
  test('should list available rooms when searching with valid dates', async ({ pages }) => {
    const { checkInDay, checkOutDay } = getSearchDates();

    await pages.homePage.open();
    await pages.homePage.waitForLoad();
    await pages.homePage.fillSearchForm('The Hotel Prime', checkInDay, checkOutDay);
    await pages.homePage.submitSearch();
    await pages.searchResultsPage.waitForLoad();
    await pages.searchResultsPage.expectRoomsAvailable();
    await pages.searchResultsPage.expectRoomCategoryPresent('General Rooms');
  });
});
