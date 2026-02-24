import { expect, Page } from '@playwright/test';
import { BasePage } from '@pages/base.page';
import { step } from '@utils/decorators';

export class CheckoutPage extends BasePage {
  protected readonly uniqueElement = this.page
    .getByTestId('shopping-cart-header')
    .describe('Rooms & Price Summary Header');
  private readonly cartRoomName = this.page
    .getByTestId('cart-room-name')
    .describe('Room Name in Cart');
  private readonly cartTotalAmount = this.page
    .getByTestId('cart-final-total')
    .locator('.cart_total_values')
    .describe('Cart Total Amount');
  private readonly proceedToGuestInfoButton = this.page
    .getByTestId('proceed-to-checkout')
    .describe('Proceed to Guest Info Button');
  private readonly proceedToPaymentButton = this.page
    .getByTestId('proceed-to-payment')
    .describe('Proceed to Payment Button');
  private readonly termsOfServiceCheckbox = this.page
    .locator('input#cgv')
    .describe('Terms of Service Checkbox');
  private readonly bankWirePaymentLink = this.page
    .getByTestId('bankwire-payment')
    .describe('Pay by Bank Wire Link');

  constructor(page: Page) {
    super(page);
  }

  @step('Get room name from cart')
  async getRoomName(): Promise<string> {
    await expect(this.cartRoomName).toBeVisible();
    return (await this.cartRoomName.textContent()) ?? '';
  }

  @step('Get total price from cart')
  async getTotalPrice(): Promise<string> {
    await expect(this.cartTotalAmount).toBeVisible();
    return ((await this.cartTotalAmount.textContent()) ?? '').trim();
  }

  @step('Proceed to Guest Information step')
  async proceedToGuestInfo(): Promise<void> {
    await this.proceedToGuestInfoButton.click();
  }

  @step('Proceed to Payment step')
  async proceedToPaymentStep(): Promise<void> {
    await this.proceedToPaymentButton.click();
  }

  @step('Accept Terms of Service')
  async acceptTermsOfService(): Promise<void> {
    await this.termsOfServiceCheckbox.check();
  }

  @step('Select Pay by Bank Wire payment method')
  async selectBankWirePayment(): Promise<void> {
    await this.bankWirePaymentLink.click();
  }
}
