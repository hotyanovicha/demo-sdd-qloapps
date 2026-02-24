import { Page } from '@playwright/test';
import { BasePage } from '@pages/base.page';
import { step } from '@utils/decorators';

export class BankWireConfirmPage extends BasePage {
  protected readonly uniqueElement = this.page
    .getByRole('heading', { name: /bank-wire payment/i, level: 3 })
    .describe('Bank Wire Payment Heading');
  private readonly confirmOrderButton = this.page
    .getByRole('button', { name: /confirm my order/i })
    .describe('Confirm Order Button');

  constructor(page: Page) {
    super(page);
  }

  @step('Click I confirm my order button')
  async confirmOrder(): Promise<void> {
    await this.confirmOrderButton.click();
  }
}
