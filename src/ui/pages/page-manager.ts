import { Page } from '@playwright/test';
import { HomePage } from '@pages/home.page';
import { AuthPage } from '@pages/auth/auth.page';
import { RegistrationPage } from '@pages/auth/registration.page';
import { MyAccountPage } from '@pages/auth/my-account.page';
import { SearchResultsPage } from '@pages/search-results.page';

export class PageManager {
  private _homePage?: HomePage;
  private _authPage?: AuthPage;
  private _registrationPage?: RegistrationPage;
  private _myAccountPage?: MyAccountPage;
  private _searchResultsPage?: SearchResultsPage;

  constructor(private page: Page) {}

  get homePage(): HomePage {
    return (this._homePage ??= new HomePage(this.page));
  }

  get authPage(): AuthPage {
    return (this._authPage ??= new AuthPage(this.page));
  }

  get registrationPage(): RegistrationPage {
    return (this._registrationPage ??= new RegistrationPage(this.page));
  }

  get myAccountPage(): MyAccountPage {
    return (this._myAccountPage ??= new MyAccountPage(this.page));
  }

  get searchResultsPage(): SearchResultsPage {
    return (this._searchResultsPage ??= new SearchResultsPage(this.page));
  }
}
