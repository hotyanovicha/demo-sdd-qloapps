import { Locator, Page } from '@playwright/test';
import { BasePage } from '../base.page';
import { step } from '@utils/decorators';

export class AuthPage extends BasePage {
  protected readonly uniqueElement = this.page.getByRole('heading', { name: /authentication/i });
  private readonly emailInput = this.page.getByLabel(/email address/i);
  private readonly passwordInput = this.page.getByLabel(/password/i);
  private readonly submitButton = this.page.getByRole('button', { name: /sign in/i });
  private readonly createAccountEmailInput = this.page.locator('input#email_create');
  private readonly createAccountButton = this.page.locator('button#SubmitCreate');

  constructor(page: Page) {
    super(page);
  }

  @step()
  async login(email: string, password: string): Promise<void> {
    await this.emailInput.fill(email);
    await this.passwordInput.fill(password);
    await this.submitButton.click();
  }

  @step()
  async createAccount(email: string): Promise<void> {
    await this.createAccountEmailInput.fill(email);
    await this.createAccountButton.click();
  }
}
