import { Locator, Page } from '@playwright/test';
import { step } from '@utils/decorators';

export abstract class BasePage {
  protected abstract readonly uniqueElement: Locator;

  constructor(protected readonly page: Page) { }

  @step()
  async goto(url: string): Promise<void> {
    await this.page.goto(url);
  }

  @step()
  async waitForLoad(): Promise<this> {
    await this.uniqueElement.waitFor({ state: 'visible' });
    return this;
  }
}
