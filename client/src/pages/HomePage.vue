<template>
  <main class="main">
    <div class="group-list-title">
    <p>Choose group: </p>
    </div>
    <div class="groups-list" v-for="group in groups" :key="group.studentsgroupid">
      <router-link  :to="{name: 'StudentsList', params: {id: group.studentsgrouptitle}}">{{ group.studentsgrouptitle }}</router-link>
    </div>  
  </main>
</template>

<script>
import StudentsList from './StudentsList.vue'
import axios from 'axios'
  export default{
    data() {
        return {
          productId : 123,
            groups: [],
            groupp: '611',
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
        async getStudents(){
                try{
                    const response = await axios.get(`http://localhost:8080/students?grouptitle=${this.group}`) 
                    console.log(response.data)
                }catch(e){
                    console.log(e)
                }
            }
    },
    mounted() {
        this.getGroups();
    },
    components: { StudentsList }
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
