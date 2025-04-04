<template>
  <div>
    {{ books }}
  </div>
</template>

<script setup lang="ts">
  const { data: books } = await useFetch(`/api/books`, {})
</script>

<style scoped></style>
