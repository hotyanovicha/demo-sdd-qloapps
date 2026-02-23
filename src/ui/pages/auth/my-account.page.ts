import { expect, Page } from '@playwright/test';
import { BasePage } from '@pages/base.page';
import { step } from '@utils/decorators';

const BOOKINGS_LINK_TITLE = 'Bookings';
const CREDIT_SLIPS_LINK_TITLE = 'Credit slips';

export class MyAccountPage extends BasePage {
  protected readonly uniqueElement = this.page.getByRole('heading', { name: /my account/i }).describe('My Account Heading');
  private readonly userNameButton = (name: string) =>
    this.page.getByRole('button', { name }).first().describe(`User name button: ${name}`);
  private readonly dashboardLinks = this.page.locator('.myaccount-link-list').describe('Dashboard Links List');
  private readonly bookingsLink = this.dashboardLinks.locator(`a[title="${BOOKINGS_LINK_TITLE}"]`).describe('Bookings Link');
  private readonly creditSlipsLink = this.dashboardLinks.locator(`a[title="${CREDIT_SLIPS_LINK_TITLE}"]`).describe('Credit Slips Link');

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
