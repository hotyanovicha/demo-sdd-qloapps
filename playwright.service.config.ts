import { defineConfig } from '@playwright/test';
import config from './playwright.config';

const { getServiceConfig, ServiceOS } = require('@azure/microsoft-playwright-testing');

export default defineConfig(
  config,
  getServiceConfig(config, {
    exposeNetwork: '<loopback>',
    timeout: 30000,
    os: ServiceOS.LINUX,
    useCloudHostedBrowsers: false, // Отключаем выполнение тестов в облаке
    serviceAuthType: 'ACCESS_TOKEN', // Явно указываем использовать PAT-токен
  }),
  {
    // Добавляем репортер для портала Azure
    reporter: [['list'], ['@azure/microsoft-playwright-testing/reporter']],
  }
);
