const BASE = process.env.BASE_URL ?? '';

export const URLS = {
  HOME: `${BASE}/en/`,
  LOGIN: `${BASE}/en/login`,
} as const;
