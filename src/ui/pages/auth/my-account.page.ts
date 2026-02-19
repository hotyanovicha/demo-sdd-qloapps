import { expect, Page } from '@playwright/test';
import { BasePage } from '../base.page';
import { step } from '@utils/decorators';

export class MyAccountPage extends BasePage {
  protected readonly uniqueElement = this.page.getByRole('heading', { name: /my account/i }).describe('My Account Heading');
  private readonly successAlert = this.page.locator('.alert-success').describe('Success Alert');

  constructor(page: Page) {
    super(page);
  }

  @step()
  async expectHeadingVisible(): Promise<void> {
    await expect(this.uniqueElement).toBeVisible();
  }

  @step()
  async expectSuccessAlert(): Promise<void> {
    await expect(this.successAlert).toContainText('Your account has been created.');
  }

  @step()
  async expectUserName(firstName: string): Promise<void> {
    await expect(this.page.getByRole('button', { name: firstName })).toBeVisible();
  }
}
