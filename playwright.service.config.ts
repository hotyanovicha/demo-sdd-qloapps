import { defineConfig } from '@playwright/test';
import { createAzurePlaywrightConfig } from '@azure/playwright';
import { DefaultAzureCredential } from '@azure/identity';
import config from './playwright.config';

export default defineConfig(
  config,
  createAzurePlaywrightConfig(config, {
    exposeNetwork: '<loopback>',
    connectTimeout: 30000,
    os: 'linux',
    credential: new DefaultAzureCredential(),
  }),
  {
    reporter: [
      ['html', { open: 'never', attachmentsBaseURL: 'data:' }],
      ['junit', { outputFile: 'test-results/results.xml' }],
      ['@azure/playwright/reporter']
    ],
    use: {
      trace: 'on',
      screenshot: 'only-on-failure',
      video: 'retain-on-failure',
    },
  }
);
