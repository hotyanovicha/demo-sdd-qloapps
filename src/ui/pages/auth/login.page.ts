import { Locator, Page } from '@playwright/test';
import { BasePage } from '../base.page';

export class LoginPage extends BasePage {
  protected readonly uniqueElement: Locator;

  private readonly emailInput: Locator;
  private readonly passwordInput: Locator;
  private readonly submitButton: Locator;

  constructor(page: Page) {
    super(page);
    // Locators populated via playwright-cli exploration
    this.uniqueElement = page.getByRole('heading', { name: /sign in/i });
    this.emailInput = page.getByLabel(/email/i);
    this.passwordInput = page.getByLabel(/password/i);
    this.submitButton = page.getByRole('button', { name: /sign in|log in/i });
  }

  async fillEmail(email: string): Promise<void> {
    await this.emailInput.fill(email);
  }

  async fillPassword(password: string): Promise<void> {
    await this.passwordInput.fill(password);
  }

  async submit(): Promise<void> {
    await this.submitButton.click();
  }

  async login(email: string, password: string): Promise<void> {
    await this.fillEmail(email);
    await this.fillPassword(password);
    await this.submit();
  }
}
