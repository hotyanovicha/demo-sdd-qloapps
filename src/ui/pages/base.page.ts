import { expect, Locator, Page } from '@playwright/test';
import { step } from '@utils/decorators';

export abstract class BasePage {
  protected abstract readonly uniqueElement: Locator;
  private readonly userDropdown: Locator;
  private readonly logoutLink: Locator;

  constructor(protected readonly page: Page) {
    this.userDropdown = page.locator('#user_info_acc').describe('User Dropdown Button');
    this.logoutLink = page.locator('.header_user_info a[title="Log me out"]').describe('Logout Link');
  }

  @step('Wait for page load')
  async waitForLoad(): Promise<this> {
    await this.uniqueElement.waitFor({ state: 'visible' });
    return this;
  }

  @step('Sign out from the application')
  async signOut(): Promise<void> {
    await this.userDropdown.click();
    await this.logoutLink.click();
  }

  @step('Open user dropdown and assert Sign Out link is visible')
  async expectSignOutVisible(): Promise<void> {
    await this.userDropdown.click();
    await expect(this.logoutLink).toBeVisible();
  }
}
