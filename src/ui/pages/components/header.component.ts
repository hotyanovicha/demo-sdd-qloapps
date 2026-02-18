import { Locator, Page } from '@playwright/test';

export class HeaderComponent {
  // Locators populated via playwright-cli exploration
  private readonly userMenu: Locator;

  constructor(private readonly page: Page) {
    this.userMenu = page.getByRole('button', { name: /account|profile|menu/i });
  }

  async openUserMenu(): Promise<void> {
    await this.userMenu.click();
  }
}
