import { defineConfig } from '@playwright/test';
import { getServiceConfig, ServiceOS } from '@azure/microsoft-playwright-testing';
import config from './playwright.config';

export default defineConfig(
  config,
  getServiceConfig(config, {
    exposeNetwork: '<loopback>',
    timeout: 30000,
    os: ServiceOS.LINUX,
    useCloudHostedBrowsers: false, // Отключаем выполнение тестов в облаке, только репорты
  }),
  {
    // Добавляем репортер для портала Azure
    reporter: [['list'], ['@azure/microsoft-playwright-testing/cli-reporter']],
  }
);
