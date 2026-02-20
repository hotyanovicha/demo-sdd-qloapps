import { expect, Page } from '@playwright/test';
import { BasePage } from '../base.page';
import { step } from '@utils/decorators';

export class MyAccountPage extends BasePage {
  protected readonly uniqueElement = this.page.getByRole('heading', { name: /my account/i }).describe('My Account Heading');

  constructor(page: Page) {
    super(page);
  }

  @step('Assert My Account heading is visible')
  async expectHeadingVisible(): Promise<void> {
    await expect(this.uniqueElement).toBeVisible();
  }

  @step('Assert user first name button is visible in the header')
  async expectUserName(firstName: string): Promise<void> {
    await expect(this.page.getByRole('button', { name: firstName }).first()).toBeVisible();
  }

  @step('Assert Bookings and Credit slips links are visible in the dashboard')
  async expectDashboardLinksVisible(): Promise<void> {
    const dashboardLinks = this.page.locator('.myaccount-link-list').describe('Dashboard Links List');
    await expect(dashboardLinks.locator('a[title="Bookings"]')).toBeVisible();
    await expect(dashboardLinks.locator('a[title="Credit slips"]')).toBeVisible();
  }
}
