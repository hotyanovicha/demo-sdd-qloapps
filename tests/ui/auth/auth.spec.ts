import { test } from '@fixtures/index';

test.describe('Authentication', () => {
  test('Portal: Auth: Successful registration: User is redirected to My Account', async ({ authPages }) => {
    const { authPage, user } = authPages;
    await authPage.myAccountPage.expectHeadingVisible();
    await authPage.myAccountPage.expectUserName(user.firstName);
  });

  test('Portal: Auth: Registered user login: Dashboard is displayed', async ({ authPages, pages }) => {
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
