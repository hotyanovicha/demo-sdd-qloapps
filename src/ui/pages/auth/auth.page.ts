import { Page } from '@playwright/test';
import { BasePage } from '@pages/base.page';
import { step } from '@utils/decorators';
import { URLS } from '@constants/urls';

export class AuthPage extends BasePage {
  protected readonly uniqueElement = this.page.getByRole('heading', { name: /authentication/i }).describe('Authentication Heading');
  private readonly emailInput = this.page.locator('input#email').describe('Login Email Input');
  private readonly passwordInput = this.page.locator('input#passwd').describe('Login Password Input');
  private readonly submitButton = this.page.getByRole('button', { name: /sign in/i }).describe('Sign In Button');
  private readonly createAccountEmailInput = this.page.locator('input#email_create').describe('Create Account Email Input');
  private readonly createAccountButton = this.page.locator('button#SubmitCreate').describe('Create Account Button');

  constructor(page: Page) {
    super(page);
  }

  @step('Open login page')
  async open(): Promise<void> {
    await this.page.goto(URLS.LOGIN);
  }

  @step('Login with email and password')
  async login(email: string, password: string): Promise<void> {
    await this.emailInput.fill(email);
    await this.passwordInput.fill(password);
    await this.submitButton.click();
  }

  @step('Fill email and click Create an account')
  async createAccount(email: string): Promise<void> {
    await this.createAccountEmailInput.fill(email);
    await this.createAccountButton.click();
  }
}
