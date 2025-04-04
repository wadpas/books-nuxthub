// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-11-01',
  devtools: { enabled: true },
  nitro: {
    experimental: {
      tasks: true,
    },
  },
  modules: ['@nuxthub/core'],
  hub: {
    database: true,
    blob: true,
  },
})
