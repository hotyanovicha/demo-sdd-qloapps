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
      ['html', { open: 'never' }],
      ['junit', { outputFile: 'test-results/results.xml' }],
      ['@azure/playwright/reporter'],
      ['@reportportal/agent-js-playwright', {
        apiKey: process.env.RP_API_KEY,      
        endpoint: process.env.RP_ENDPOINT,   
        project: process.env.RP_PROJECT,     
        launch: `QloApps-Regression-${process.env.BUILD_SOURCEBRANCHNAME || 'local'}`,
        attributes: [
            { key: 'env', value: 'azure-pipeline' },
            { key: 'branch', value: process.env.BUILD_SOURCEBRANCHNAME || 'local' }
        ],
        description: 'Playwright E2E Test Run from Azure DevOps'
      }]
    ],
    use: {
      trace: 'on',
      screenshot: 'only-on-failure',
      video: 'retain-on-failure',
    },
  }
);
