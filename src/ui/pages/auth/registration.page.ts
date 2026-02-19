import { Page } from '@playwright/test';
import { BasePage } from '../base.page';
import { RegistrationData } from '@types-ui/index';
import { step } from '@utils/decorators';

export class RegistrationPage extends BasePage {
  protected readonly uniqueElement = this.page.getByRole('heading', { name: /your personal information/i });
  private readonly titleMrRadio = this.page.locator('input#id_gender1').describe('Mr Title Radio');
  private readonly titleMrsRadio = this.page.locator('input#id_gender2').describe('Mrs Title Radio');
  private readonly firstNameInput = this.page.locator('input#customer_firstname').describe('First Name Input');
  private readonly lastNameInput = this.page.locator('input#customer_lastname').describe('Last Name Input');
  private readonly passwordInput = this.page.locator('input#passwd').describe('Password Input');
  private readonly phoneInput = this.page.getByLabel(/phone/i).describe('Phone Input');
  private readonly registerButton = this.page.getByRole('button', { name: /register/i }).describe('Register Button');

  constructor(page: Page) {
    super(page);
  }

  @step()
  async register(data: RegistrationData): Promise<void> {
    const titleRadio = data.title === 'Mr' ? this.titleMrRadio : this.titleMrsRadio;
    await titleRadio.check();
    await this.firstNameInput.fill(data.firstName);
    await this.lastNameInput.fill(data.lastName);
    await this.passwordInput.fill(data.password);
    await this.phoneInput.fill(data.phone);
    await this.registerButton.click();
  }
}
