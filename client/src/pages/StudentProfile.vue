<template>
    <div class="wrapper">
        <div class="student-information">
            <table>
                <tr>
                    <th>Имя</th>
                    <th>Фамилия</th>
                    <th>Отчество</th>
                    <th>Дата рождения</th>
                    <th>Группа</th>
                    <th>Средний балл</th>
                </tr>
                <tr>
                    
                </tr>
            </table>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
export default{
    data(){
        studentinfo: []
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
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>