<template>
    <body class="main">
        <div class="wrapper">
        <div class="student-list" v-for="student in students" :key="student.studentid">
            <p>{{ student.studentid }}</p>
            <p>{{ student.studentfirstname }}</p>
            <p>{{ student.studentlastname }}</p>
            <p>{{ student.studentmiddlename }}</p>
            <p>{{ student.studentbirthdate }}</p>
         </div>
        </div>
    </body>
</template>

<script>
import axios from 'axios'
    export default{
        data(){
            return{
                group : '111',
                students: []
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
        }
    }
</script>

<style>
    .main{
        display: flex;
        flex-direction: column;
        gap: 30px;
        justify-content: center;
    
    }

    .wrapper{
        display: flex;
        justify-content: center;
    }

    .student-list{
        display: flex;
        gap: 20px;
        flex-direction: column;
    }
</style>