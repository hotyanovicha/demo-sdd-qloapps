import { defineConfig } from '@playwright/test';
import { getServiceConfig } from '@azure/playwright';
import { DefaultAzureCredential } from '@azure/identity';
import config from './playwright.config';

export default defineConfig(
  config,
  getServiceConfig({
    exposeNetwork: '<loopback>',
    timeout: 30000,
    os: 'linux',
    useCloudHostedBrowsers: false,
    credential: new DefaultAzureCredential(),
  }),
  {
    reporter: [
      ['html', { open: 'never' }],
      ['@azure/playwright/reporter']
    ],
  }
);
