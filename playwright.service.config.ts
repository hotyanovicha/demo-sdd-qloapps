import { defineConfig } from '@playwright/test';
import { getServiceConfig } from '@azure/playwright';
import config from './playwright.config';

export default defineConfig(
  config,
  getServiceConfig({
    exposeNetwork: '<loopback>',
    timeout: 30000,
    os: 'linux',
    useCloudHostedBrowsers: false,
  }),
  {
    reporter: [
      ['html', { open: 'never' }],
      ['@azure/playwright/reporter']
    ],
  }
);
