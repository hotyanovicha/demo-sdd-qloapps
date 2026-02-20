import { test } from '@fixtures/index';

test.describe('Authentication', () => {
  test('should redirect to My Account when a new user registers successfully', async ({ authPages }) => {
    const { authPage, user } = authPages;
    await authPage.myAccountPage.expectHeadingVisible();
    await authPage.myAccountPage.expectUserName(user.firstName);
  });

  test('should display dashboard when registered user logs in', async ({ authPages, pages }) => {
    const { user } = authPages;
    await pages.homePage.open();
    await pages.homePage.goToSignIn();
    await pages.authPage.waitForLoad();
    await pages.authPage.login(user.email, user.password);
    await pages.myAccountPage.waitForLoad();
    await pages.myAccountPage.expectSignOutVisible();
    await pages.myAccountPage.expectUserName(user.firstName);
    await pages.myAccountPage.expectDashboardLinksVisible();
  });
});
