import { expect, Page } from '@playwright/test';
import { BasePage } from '@pages/base.page';
import { MY_ACCOUNT } from '@constants/my-account';
import { step } from '@utils/decorators';

export class MyAccountPage extends BasePage {
  protected readonly uniqueElement = this.page.getByRole('heading', { name: /my account/i }).describe('My Account Heading');
  private readonly userNameButton = (name: string) =>
    this.page.getByRole('button', { name }).first().describe(`User name button: ${name}`);
  private readonly dashboardLinks = this.page.locator('.myaccount-link-list').describe('Dashboard Links List');
  private readonly bookingsLink = this.dashboardLinks
    .locator(`a[title="${MY_ACCOUNT.DASHBOARD_LINK_TITLES.BOOKINGS}"]`)
    .describe('Bookings Link');
  private readonly creditSlipsLink = this.dashboardLinks
    .locator(`a[title="${MY_ACCOUNT.DASHBOARD_LINK_TITLES.CREDIT_SLIPS}"]`)
    .describe('Credit Slips Link');

  constructor(page: Page) {
    super(page);
  }

  @step('Assert My Account heading is visible')
  async expectHeadingVisible(): Promise<void> {
    await expect(this.uniqueElement).toBeVisible();
  }

  @step('Assert user first name button is visible in the header')
  async expectUserName(firstName: string): Promise<void> {
    await expect(this.userNameButton(firstName)).toBeVisible();
  }

  @step('Assert Bookings and Credit slips links are visible in the dashboard')
  async expectDashboardLinksVisible(): Promise<void> {
    await expect(this.bookingsLink).toBeVisible();
    await expect(this.creditSlipsLink).toBeVisible();
  }
}
