<template>
  <main class="main">
    <div class="groups-list">
      {{ groups }}
    </div>
  </main>
</template>

<script>
import axios from 'axios'
  export default{
    data(){
      return{
        groups : []
      }
    },
    methods: {
      async getGroups(){
        try {
          const response = await axios.get("http://localhost:8080/groups")
          console.log(response.data)
          this.groups = response.data; 
        } catch(e){
          console.log(e)
        }
      }
    },
    mounted(){
      this.getGroups()
    }
  }
</script>

<style lang="scss" scoped>

</style>
