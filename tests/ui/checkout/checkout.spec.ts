import { expect, test } from '@fixtures/index';

test.describe('Checkout', () => {
  test('Portal: Checkout: Cart summary: Correct items and costs displayed', async ({ checkoutSummaryPage }) => {
    const { authPage, roomName, totalPrice } = checkoutSummaryPage;

    const displayedRoomName = await authPage.checkoutPage.getRoomName();
    const displayedTotalPrice = await authPage.checkoutPage.getTotalPrice();

    expect(displayedRoomName).toEqual(roomName);
    expect(displayedTotalPrice).toEqual(totalPrice);
  });

  test('Portal: Checkout: Valid address: Correct hotel details displayed', async ({ checkoutSummaryPage }) => {
    const { authPage } = checkoutSummaryPage;

    const hotelAddress = await authPage.checkoutPage.getHotelAddress();

    expect(hotelAddress).toContain('The Hotel Prime');
    expect(hotelAddress).toContain('Poland');
  });

  test('Portal: Checkout: Terms of Service validation', async ({ checkoutSummaryPage }) => {
    const { authPage } = checkoutSummaryPage;

    await authPage.checkoutPage.proceedToGuestInfo();
    await authPage.checkoutPage.proceedToPaymentStep();

    await authPage.checkoutPage.expectTermsOfServiceErrorVisible();

    await authPage.checkoutPage.acceptTermsOfService();

    await authPage.checkoutPage.expectTermsOfServiceErrorNotAttached();
  });

  test('Portal: Checkout: Bank Wire payment: Order is completed', async ({ checkoutSummaryPage }) => {
    const { authPage, roomName, totalPrice } = checkoutSummaryPage;

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
