<template>
  <div>
    <h1 class="text-red-500">Home</h1>
    <form>
      <select v-model="locale">
        <option value="en">en</option>
        <option value="br">br</option>
      </select>
      <p>{{ $t('welcome') }}</p>
    </form>
  </div>
</template>

<script setup>
const { locale } = useI18n()

</script>
