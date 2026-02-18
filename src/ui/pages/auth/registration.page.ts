import { Page } from '@playwright/test';
import { BasePage } from '../base.page';
import { RegistrationData } from '@types-ui/index';

export class RegistrationPage extends BasePage {
  protected readonly uniqueElement = this.page.getByRole('heading', { name: /your personal information/i });
  private readonly titleMrRadio = this.page.locator('input#id_gender1');
  private readonly titleMrsRadio = this.page.locator('input#id_gender2');
  private readonly firstNameInput = this.page.locator('input#customer_firstname');
  private readonly lastNameInput = this.page.locator('input#customer_lastname');
  private readonly passwordInput = this.page.locator('input#passwd');
  private readonly phoneInput = this.page.getByLabel(/phone/i);
  private readonly registerButton = this.page.getByRole('button', { name: /register/i });

  constructor(page: Page) {
    super(page);
  }

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
