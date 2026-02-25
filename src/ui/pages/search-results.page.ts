import { expect, Page } from '@playwright/test';
import { BasePage } from './base.page';
import { step } from '@utils/decorators';

const CART_SUCCESS_MESSAGE = 'Room successfully added to your cart';
const ADULT_OCCUPANCY_ERROR_MESSAGE = 'Maximum adult occupancy reached';

export class SearchResultsPage extends BasePage {
  protected readonly uniqueElement = this.page.locator('#category_data_cont').describe('Room Results Container');
  private readonly roomCards = this.page.locator('#center_column .room_cont').describe('Room Cards');
  private readonly roomHeadings = this.page.locator('.rm_heading').describe('Room Name Headings');
  private readonly firstRoomCard = this.page.getByTestId('room-card').first().describe('First Available Room Card');
  private readonly occupancyButton = this.firstRoomCard.getByTestId('occupancy-button').describe('Occupancy Selector Button');
  private readonly occupancySubmitButton = this.firstRoomCard.getByTestId('occupancy-submit').describe('Occupancy Done Button');
  private readonly bookNowButton = this.firstRoomCard.getByTestId('book-now').describe('Book Now Button');
  private readonly adultIncrementButton = this.firstRoomCard.getByTestId('occupancy-quantity-up').describe('Adult Increment Button');
  private readonly adultCountDisplay = this.firstRoomCard.getByTestId('occupancy-adult-count').describe('Adult Count Display');
  private readonly occupancyErrorMessage = this.firstRoomCard.locator('.occupancy-input-errors').describe('Occupancy Error Message');
  private readonly cartModalHeading = this.page.getByTestId('layer-cart-room-added').describe('Cart Success Modal Heading');
  private readonly proceedToCheckoutButton = this.page.getByTestId('layer-cart-checkout').describe('Proceed to Checkout Button');

  constructor(page: Page) {
    super(page);
  }

  @step('Assert at least one room card is visible')
  async expectRoomsAvailable(): Promise<void> {
    await expect(this.roomCards.first()).toBeVisible();
  }

  @step('Assert a room heading with the given category name is visible')
  async expectRoomCategoryPresent(categoryName: string): Promise<void> {
    await expect(this.roomHeadings.filter({ hasText: categoryName }).first()).toBeVisible();
  }

  @step('Open occupancy selector on first room card')
  async selectOccupancy(): Promise<void> {
    await this.occupancyButton.click();
  }

  @step('Confirm occupancy selection')
  async submitOccupancy(): Promise<void> {
    await this.occupancySubmitButton.click();
  }

  @step('Click Book Now on the first available room')
  async bookFirstRoom(): Promise<void> {
    await this.bookNowButton.click();
  }

  @step('Assert cart success modal is visible with booking confirmation message')
  async expectCartSuccessModalVisible(): Promise<void> {
    await expect(this.cartModalHeading).toBeVisible();
    await expect(this.cartModalHeading).toContainText(CART_SUCCESS_MESSAGE);
  }

  @step('Assert Proceed to Checkout button is visible and enabled')
  async expectProceedToCheckoutVisible(): Promise<void> {
    await expect(this.proceedToCheckoutButton).toBeVisible();
    await expect(this.proceedToCheckoutButton).toBeEnabled();
  }

  @step('Click Proceed to Checkout button')
  async clickProceedToCheckout(): Promise<void> {
    await this.proceedToCheckoutButton.click();
  }

  @step('Click adult increment button to increase adult count')
  async incrementAdults(): Promise<void> {
    await this.adultIncrementButton.click();
  }

  @step('Assert maximum adult occupancy error is shown')
  async expectAdultOccupancyError(): Promise<void> {
    await expect(this.occupancyErrorMessage).toContainText(ADULT_OCCUPANCY_ERROR_MESSAGE);
  }

  @step('Assert adult count equals expected value')
  async expectAdultCount(expectedCount: string): Promise<void> {
    await expect(this.adultCountDisplay).toContainText(expectedCount);
  }

  @step('Assert occupancy button text equals expected value')
  async expectOccupancyButtonText(expectedText: string): Promise<void> {
    await expect(this.occupancyButton).toContainText(expectedText);
  }
}
