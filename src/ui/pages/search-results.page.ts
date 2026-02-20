import { expect, Page } from '@playwright/test';
import { BasePage } from './base.page';
import { step } from '@utils/decorators';

export class SearchResultsPage extends BasePage {
  protected readonly uniqueElement = this.page.locator('#category_data_cont').describe('Room Results Container');
  private readonly roomCards = this.page.locator('#center_column .room_cont').describe('Room Cards');
  private readonly roomHeadings = this.page.locator('.rm_heading').describe('Room Name Headings');

  constructor(page: Page) {
    super(page);
  }

  @step()
  async expectRoomsAvailable(): Promise<void> {
    await expect(this.roomCards.first()).toBeVisible();
  }

  @step()
  async expectRoomCategoryPresent(categoryName: string): Promise<void> {
    await expect(this.roomHeadings.filter({ hasText: categoryName }).first()).toBeVisible();
  }
}
