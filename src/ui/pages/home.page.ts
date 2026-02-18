import { Page } from '@playwright/test';
import { BasePage } from './base.page';

export class HomePage extends BasePage {
  protected readonly uniqueElement = this.page.locator('#header');
  private readonly signInLink = this.page.getByRole('link', { name: /sign in/i });

  constructor(page: Page) {
    super(page);
  }

  async goToSignIn(): Promise<void> {
    await this.signInLink.click();
  }
}
