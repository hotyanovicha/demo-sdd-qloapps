import { Page } from '@playwright/test';
import { BasePage } from './base.page';
import { step } from '@utils/decorators';
import { URLS } from '@constants/urls';

export class HomePage extends BasePage {
  protected readonly uniqueElement = this.page.locator('#header').describe('Site Header');
  private readonly signInLink = this.page.getByRole('link', { name: /sign in/i }).describe('Sign In Link');
  private readonly chosenTrigger = this.page.locator('#id_hotel_button_chosen .chosen-single').describe('Hotel Selector Trigger');
  private readonly datepickerTrigger = this.page.locator('#daterange_value').describe('Date Range Picker');
  private readonly searchButton = this.page.getByRole('button', { name: /search rooms/i }).describe('Search Rooms Button');

  constructor(page: Page) {
    super(page);
  }

  @step('Open home page')
  async open(): Promise<void> {
    await this.page.goto(URLS.HOME);
  }

  @step('Go to sign in page')
  async goToSignIn(): Promise<void> {
    await this.signInLink.click();
  }

  @step('Select hotel from dropdown and pick check-in / check-out dates')
  async fillSearchForm(hotelName: string, checkInDay: string, checkOutDay: string): Promise<void> {
    await this.chosenTrigger.click();
    await this.page.locator('#id_hotel_button_chosen').getByText(hotelName).click();
    await this.datepickerTrigger.click();
    await this.page.locator('.day.toMonth.valid').filter({ hasText: new RegExp(`^${checkInDay}$`) }).first().click();
    await this.page.locator('.day.toMonth.valid').filter({ hasText: new RegExp(`^${checkOutDay}$`) }).first().click();
  }

  @step('Submit search')
  async submitSearch(): Promise<void> {
    await this.searchButton.click();
  }
}
