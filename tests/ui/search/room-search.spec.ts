import { test } from '@fixtures/index';
import { getSearchDates } from '@utils/dates';
import { HOTELS } from '@constants/hotels';
import { ROOM_TYPES } from '@constants/room-types';

test.describe('Room Search', () => {
  test('Portal: Room Search: Valid dates search: Available rooms are listed', async ({ pages }) => {
    const { checkInDay, checkOutDay } = getSearchDates();

    await pages.homePage.open();
    await pages.homePage.waitForLoad();
    await pages.homePage.fillSearchForm(HOTELS.THE_HOTEL_PRIME, checkInDay, checkOutDay);
    await pages.homePage.submitSearch();
    await pages.searchResultsPage.waitForLoad();
    await pages.searchResultsPage.expectRoomsAvailable();
    await pages.searchResultsPage.expectRoomCategoryPresent(ROOM_TYPES.ROOMS);
  });
});
