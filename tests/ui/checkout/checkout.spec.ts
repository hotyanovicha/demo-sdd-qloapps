import { test } from '@fixtures/index';
import { getSearchDates } from '@utils/dates';
import { HOTELS } from '@constants/hotels';

test.describe('Checkout', () => {
  test('Portal: Checkout: Bank Wire payment: Order is completed', async ({ authPages }) => {
    const { authPage } = authPages;
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
    await authPage.checkoutPage.proceedToGuestInfo();
    await authPage.checkoutPage.proceedToPaymentStep();
    await authPage.checkoutPage.acceptTermsOfService();
    await authPage.checkoutPage.selectBankWirePayment();

    await authPage.bankWireConfirmPage.waitForLoad();
    await authPage.bankWireConfirmPage.confirmOrder();

    await authPage.orderConfirmationPage.waitForLoad();
    await authPage.orderConfirmationPage.expectSuccessMessageVisible();
    await authPage.orderConfirmationPage.expectRoomName(roomName);
    await authPage.orderConfirmationPage.expectTotalPrice(totalPrice);
    await authPage.orderConfirmationPage.expectOrderStatus();
  });
});
