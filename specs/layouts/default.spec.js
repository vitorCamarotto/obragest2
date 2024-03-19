import { expect, it, describe } from 'vitest'
import defaultLayout from '../../layouts/default.vue'
import { mount } from '@vue/test-utils'

import { createVuetify } from 'vuetify'
import * as components from 'vuetify/components'
import * as directives from 'vuetify/directives'

const vuetify = createVuetify({
  components,
  directives,
})

describe('defualt layout', () => {
  it('renders navbar', () => {
    const wrapper = mount(defaultLayout, {
      global: {
        plugins: [vuetify]
      }
    })

    expect(wrapper.find('[data-test="navbar"]').exists()).toBe(true)
  })
})
