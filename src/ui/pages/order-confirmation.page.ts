import { expect, Page } from '@playwright/test';
import { BasePage } from '@pages/base.page';
import { step } from '@utils/decorators';

const SUCCESS_MESSAGE = 'Your booking has been created successfully!';
const AWAITING_PAYMENT_STATUS = 'Awaiting payment';

export class OrderConfirmationPage extends BasePage {
  protected readonly uniqueElement = this.page
    .getByTestId('booking-success-message')
    .describe('Booking Success Message');
  private readonly confirmationRoomName = this.page
    .getByTestId('confirmation-room-name')
    .describe('Confirmation Room Name');
  private readonly orderStatus = this.page
    .getByTestId('order-status')
    .describe('Order Status');
  private readonly confirmationTotalAmount = this.page
    .locator('table.table-summary tr')
    .filter({ hasText: /Final Booking Total/ })
    .locator('td')
    .last()
    .describe('Final Booking Total Amount');

  constructor(page: Page) {
    super(page);
  }

  @step('Assert booking success message is visible')
  async expectSuccessMessageVisible(): Promise<void> {
    await expect(this.uniqueElement).toBeVisible();
    await expect(this.uniqueElement).toContainText(SUCCESS_MESSAGE);
  }

  @step('Assert confirmation room name matches expected value')
  async expectRoomName(expectedName: string): Promise<void> {
    await expect(this.confirmationRoomName).toContainText(expectedName);
  }

  @step('Assert total price matches expected value')
  async expectTotalPrice(expectedTotal: string): Promise<void> {
    await expect(this.confirmationTotalAmount).toContainText(expectedTotal);
  }

  @step('Assert order status shows awaiting payment')
  async expectOrderStatus(): Promise<void> {
    await expect(this.orderStatus).toContainText(AWAITING_PAYMENT_STATUS);
  }
}
