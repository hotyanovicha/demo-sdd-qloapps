import { test } from '@fixtures/index';

test.describe('Checkout', () => {
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
