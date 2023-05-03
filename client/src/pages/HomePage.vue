<template>
  <main class="main">
    <div class="group-list-title">
    <p>Choose group: </p>
    </div>
    <div class="groups-list" v-for="group in groups" :key="group.studentsgroupid">
      <router-link :to="{name: 'StudentsList', params: {id: group.studentsgrouptitle}}">{{ group.studentsgrouptitle }}</router-link>
    </div>  
  </main>
</template>

<script>
import StudentsList from './StudentsList.vue'
import axios from 'axios'
  export default{
    data() {
        return {
            groups: []
        };
    },
    methods: {
        async getGroups() {
            try {
                const response = await axios.get("http://localhost:8080/groups");
                this.groups = response.data;
            }
            catch (e) {
                console.log(e);
            }
        },
        
    },
    mounted() {
        this.getGroups();
    },
    components: { StudentsList }
}
</script>

<style lang="scss" scoped>
.main{
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin-left: 40%;
  gap: 50px;
}
.group-list-title{
  font-size: 30px;
  font-family: 'Times New Roman', Times, serif;

}

.groups-list{
  font-size: 30px;
  flex-direction: column;
  gap: 30px;
  margin-left: 10%;
}
</style>
