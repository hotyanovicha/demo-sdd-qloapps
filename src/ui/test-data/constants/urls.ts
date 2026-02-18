const BASE = process.env.BASE_URL ?? '';

export const URLS = {
  BASE,
  LOGIN: `${BASE}/login`,
} as const;
