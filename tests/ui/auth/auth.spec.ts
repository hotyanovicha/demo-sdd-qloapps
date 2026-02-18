import { test } from '@fixtures/index';


test.describe('User Registration', () => {
  test('should redirect to My Account when a new user registers successfully', async ({ authPages }) => {
    const { authPage, user } = authPages;
    await authPage.myAccountPage.expectUrl();
    await authPage.myAccountPage.expectHeadingVisible();
    await authPage.myAccountPage.expectUserName(user.firstName);
  });
});
