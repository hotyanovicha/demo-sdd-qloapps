export type Title = 'Mr' | 'Mrs';

export interface RegistrationData {
  title: Title;
  firstName: string;
  lastName: string;
  email: string;
  password: string;
  phone: string;
}
