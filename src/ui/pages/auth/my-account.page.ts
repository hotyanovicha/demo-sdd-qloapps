import { expect, Page } from '@playwright/test';
import { BasePage } from '../base.page';

export class MyAccountPage extends BasePage {
  protected readonly uniqueElement = this.page.getByRole('heading', { name: /my account/i });
  private readonly successAlert = this.page.locator('.alert-success');

  constructor(page: Page) {
    super(page);
  }

  async expectHeadingVisible(): Promise<void> {
    await expect(this.uniqueElement).toBeVisible();
  }

  async expectSuccessAlert(): Promise<void> {
    await expect(this.successAlert).toContainText('Your account has been created.');
  }

  async expectUrl(): Promise<void> {
    await expect(this.page).toHaveURL(/my-account/);
  }

  async expectUserName(firstName: string): Promise<void> {
    await expect(this.page.getByRole('button', { name: firstName })).toBeVisible();
  }
}
