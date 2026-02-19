import { Page } from '@playwright/test';
import { BasePage } from './base.page';
import { step } from '@utils/decorators';

export class HomePage extends BasePage {
  protected readonly uniqueElement = this.page.locator('#header');
  private readonly signInLink = this.page.getByRole('link', { name: /sign in/i });

  constructor(page: Page) {
    super(page);
  }

  @step()
  async goToSignIn(): Promise<void> {
    await this.signInLink.click();
  }
}
