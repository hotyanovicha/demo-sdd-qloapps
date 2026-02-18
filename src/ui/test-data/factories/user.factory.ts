import { faker } from '@faker-js/faker';
import { RegistrationData, Title } from '@types-ui/index';

export function createRegistrationData(): RegistrationData {
  const title = faker.helpers.arrayElement<Title>(['Mr', 'Mrs']);
  const sex = title === 'Mr' ? 'male' : 'female';
  return {
    title,
    firstName: faker.person.firstName(sex),
    lastName: faker.person.lastName(),
    email: faker.internet.email({ provider: `test-${Date.now()}.com` }),
    password: 'Test1234!',
    phone: faker.string.numeric(10),
  };
}
