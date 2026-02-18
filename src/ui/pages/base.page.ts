import { Locator, Page } from '@playwright/test';

export abstract class BasePage {
  protected abstract readonly uniqueElement: Locator;

  constructor(protected readonly page: Page) {}

  async waitForLoad(): Promise<this> {
    await this.uniqueElement.waitFor({ state: 'visible' });
    return this;
  }
}
