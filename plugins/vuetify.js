import { md3 } from 'vuetify/blueprints'
import { createVuetify } from 'vuetify'

export default defineNuxtPlugin((app) => {
  const vuetify = createVuetify({
    blueprint: md3
  })
  app.vueApp.use(vuetify)
})
