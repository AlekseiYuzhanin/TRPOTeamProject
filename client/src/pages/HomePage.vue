<template>
  <main class="main">
    <div class="group-list-title">
    <p>Choose group: </p>
    </div>
    <div class="groups-list" v-for="group in groups" :key="group.studentsgroupid">
     <router-link to="/groups">{{group.studentsgrouptitle}}</router-link>
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
          const response = await axios.get('http://localhost:8080/groups')
          this.groups = response.data
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
.group-list-title{
  font-size: 30px;
  font-family: 'Times New Roman', Times, serif;
}

.groups-list{
  font-size: 30px;
  margin-left: 40%;
}
</style>
