<template>
    <body class="main">
        <div class="studentslist-title">
            <h1>Группа {{ this.$route.params.id }} </h1>
        </div>
        <div class="wrapper">
            <div class="table-class">
            <table>
                <tr>
                    <th>Имя</th>
                    <th>Фамилия</th>
                    <th>Отчество</th>
                    <th>Дата рождения</th>
                    <th>Группа</th>
                    <th>Средний балл</th>
                </tr>
                    <tr v-for="student in students" :key="student.studentid">
                        <router-link class="link" :to="{name: 'sstudent', params: {id: student.studentid}}"><td>{{ student.studentfirstname }}</td></router-link>
                        <td>{{ student.studentlastname }}</td>
                        <td>{{ student.studentmiddlename }}</td>
                        <td>{{ student.studentbirthdate.slice(0,10)}}</td>
                        <td>{{ student.grouptitle }}</td>
                        <td>{{ student.averagemark.Float64 }}</td>
                    </tr>
            </table>
    </div>
        </div>
    </body>
</template>

<script>
import axios from 'axios'
import StudentProfile from './StudentProfile.vue'
    export default{
        data(){
            return{
                group : this.$route.params.id,
                students: [],
                birthdate: '2021-10-15T12:30:00.000Z'
            }
        },
        methods:{
            async getStudents(){
                try{
                    const response = await axios.get(`http://localhost:8080/students?grouptitle=${this.group}`)
                    this.students = response.data 
                    console.log(response.data)
                }catch(e){
                    console.log(e)
                }
            }
        },
        mounted(){
            this.getStudents()
        },
        
  }

</script>

<style lang="scss">
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: center;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}

.link{
  text-decoration: none;
  width: 100%;
}

</style>