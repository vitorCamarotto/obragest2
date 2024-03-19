<template>
  <div>
    <v-app>
      <v-app-bar
        app
        elevation="8"
        data-test="navbar"
      >
      </v-app-bar>

      <v-main>
        <slot />
      </v-main>
    </v-app>
  </div>
</template>

<script setup>
</script>