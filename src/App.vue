<script>
  import DefaultLayout from "./layouts/DefaultLayout.vue"
  export default{
    components:{
      DefaultLayout
    },
    name: "App"
  }
</script>

<template>
  <DefaultLayout>
    <RouterView/>
  </DefaultLayout>
</template>

<style scoped>
  *{
    box-sizing: border-box;
    padding: 0;
    margin: 0;
  }

</style>
