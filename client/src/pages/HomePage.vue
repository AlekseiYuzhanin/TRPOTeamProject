<template>
  <main class="main">
    <div class="group-list-title">
    <p>Choose group: </p>
    </div>
    <div class="groups-list" v-for="group in groups" :key="group.studentsgroupid">
      <button @click="checkGroup(group.studentsgrouptitle)">{{ group.studentsgrouptitle }}</button>
    </div>
  
  </main>
</template>

<script>
import StudentsList from './StudentsList.vue'
import axios from 'axios'
  export default{
    data() {
        return {
            groups: [],
            groupp: ""
        };
    },
    methods: {
        checkGroup(elemName) {
            console.log('Clicked on ' + elemName)
        },
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
