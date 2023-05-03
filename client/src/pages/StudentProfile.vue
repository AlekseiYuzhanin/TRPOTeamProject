<template>
    <div class="wrapper">
        <div class="student-information">
            <table class="studentinfo-list">
                <tr>
                    <th>Имя</th>
                    <th>Фамилия</th>
                    <th>Отчество</th>
                    <th>Дата рождения</th>
                    <th>Год поступления</th>
                </tr>
                <tr v-for="student in studentinfo.slice(0,1)" :key="student.studentid">
                    <td>{{ studentinfo[0].studentfirstname }}</td>
                    <td>{{ studentinfo[0].studentlastname }}</td>
                    <td>{{ studentinfo[0].studentmiddlename }}</td>
                    <td>{{ studentinfo[0].studentbirthdate.slice(0,10) }}</td>
                    <td>{{ studentinfo[0].studententranceyear }}</td>
                </tr>
            </table>
        </div>
        <div class="student-information">
            <table class="studentinfo-list">
                <tr>
                    <th>Предмет</th>
                    <th>Год учебы</th>
                    <th>Итоговая оценка за год</th>
                </tr>
                <tr v-for="student in studentinfo" :key="student.studentid">
                    <td>{{ student.subjecttitle }}</td>
                    <td>{{ student.studentgradeyear }}</td>
                    <td>{{ student.studentgradegrade.Float64 }}</td>
                </tr>
            </table>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
export default{
    data(){
        return{
            studentinfo: []
        }
    },
    methods:{
        async getProfile(){
            try{
                const response = await axios.get(`http://localhost:8080/student?studentid=${this.$route.params.id}`)
                this.studentinfo = response.data
            }catch(e){
                console.log(e)
            }
        }
    },
    mounted(){
        this.getProfile()
    }
    
}
</script>

<style lang="scss">
able {
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

.student-information{
    padding-bottom: 100px;
}
</style>