import { test } from '@fixtures/index';
import { getSearchDates } from '@utils/dates';

test.describe('Room Search', () => {
  test('Portal: Room Search: Valid dates search: Available rooms are listed', async ({ pages }) => {
    const { checkInDay, checkOutDay } = getSearchDates();

    await pages.homePage.open();
    await pages.homePage.waitForLoad();
    await pages.homePage.fillSearchForm('The Hotel Prime', checkInDay, checkOutDay);
    await pages.homePage.submitSearch();
    await pages.searchResultsPage.waitForLoad();
    await pages.searchResultsPage.expectRoomsAvailable();
    await pages.searchResultsPage.expectRoomCategoryPresent('Rooms');
  });
});
