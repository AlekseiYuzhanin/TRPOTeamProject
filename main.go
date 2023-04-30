package main

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"trpo_project/dbmodels"
	_ "github.com/lib/pq"
)

type StudentsWithMarks struct{
	StudentId int `json:"studentid"`
	StudentFirstName string `json:"studentfirstname"`
	StudentLastName string `json:"studentlastname"`
	StudentMiddleName string `json:"studentmiddlename"`
	StudentBirthDate string `json:"studentbirthdate"`
	GroupTitle string `json:"grouptitle"`
	AverageMark float64 `json:"averagemark"`
}

func dbconn() (db *sql.DB){
	const (
		dbDriver = "postgres"
		dbUser = "postgres"
		dbPass = "qweasd123"
		dbName = "postgres"
		dbHost = "localhost"
		dbPort = "5432"
	)

	dbUri := fmt.Sprintf("host=%s port=%s user=%s password=%s dbname=%s sslmode=disable",dbHost,dbPort,dbUser,dbPass,dbName)
	db,err := sql.Open(dbDriver,dbUri)
	if err!= nil{
		panic(err.Error())
	}

	return db
}

func getStudents(w http.ResponseWriter, r *http.Request){
	db := dbconn()

	defer db.Close()
	grouptitle := r.URL.Query().Get("grouptitle")
	rows, err := db.Query(`
	select student.studentid , student.studentfirstname , student.studentlastname ,
	student.studentmiddlename , student.studentbirthdate , 
	studentsgroup.studentsgrouptitle , round(avg(studentgrade.studentgradegrade)) as "Average number" from studentgrade 
	inner join Student on student.studentid  = studentgrade.studentgradestudentnumber  
	inner join course on course.coursestudentnumber = student.studentid 
	inner join studentsgroup on studentsgroup.studentsgroupid = course.coursegroupnumber
	where studentsgroup.studentsgrouptitle = $1
	group by student.studentid , studentsgroup.studentsgrouptitle  
	order by avg(studentgrade.studentgradegrade);`,grouptitle)

 	if err != nil {
  		log.Fatal(err)
 	}

 	defer rows.Close()

	var studentmarks []StudentsWithMarks

	for rows.Next(){
		var s dbmodels.Student
		var g dbmodels.StudentsGroup
		var sg dbmodels.StudentGrade
		err := rows.Scan(&s.StudentId,&s.StudentFirstName,&s.StudentLastName,&s.StudentMiddleName,&s.StudentBirthDate,&g.StudentsGroupTitile,&sg.StudentGrade)
		if err!= nil{
			fmt.Println(err)
			continue
		}

		studentsmarks := StudentsWithMarks{
			StudentId: s.StudentId,
			StudentFirstName: s.StudentFirstName,
			StudentLastName: s.StudentLastName,
			StudentMiddleName: s.StudentMiddleName,
			StudentBirthDate: s.StudentBirthDate,
			GroupTitle: g.StudentsGroupTitile,
			AverageMark: float64(sg.StudentGrade),
		}
		
		studentmarks = append(studentmarks,studentsmarks)
	}

	json.NewEncoder(w).Encode(studentmarks)
}

func getStudent(w http.ResponseWriter, r*http.Request){
	db := dbconn()
 	defer db.Close()

	id := r.URL.Query().Get("studentid")
 	var student dbmodels.Student
 	err := db.QueryRow(`select studentid, studentfirstname,studentlastname,
	studentmiddlename,studentbirthdate,studententranceyear 
	from student WHERE studentid=$1`, id).Scan(&student.StudentId,&student.StudentFirstName,&student.StudentLastName,&student.StudentMiddleName,&student.StudentBirthDate,&student.StudentEntranceYear)
 	
	if err != nil {
  	log.Fatal(err)
 }

 json.NewEncoder(w).Encode(student)
}

func getGroups(w http.ResponseWriter, r*http.Request){
	db := dbconn()
	defer db.Close()

	rows, err := db.Query("select studentsgroupid, studentsgrouptitle from studentsgroup")
 	if err != nil {
  		log.Fatal(err)
 	}

 	defer rows.Close()

	groups := []dbmodels.StudentsGroup{}

	for rows.Next(){
		g := dbmodels.StudentsGroup{}
		err := rows.Scan(&g.StudentsGroupId,&g.StudentsGroupTitile)
		if err!= nil{
			fmt.Println(err)
			continue
		}

		groups = append(groups, g)
	}

	json.NewEncoder(w).Encode(groups)
}



func main(){
	http.HandleFunc("/students",getStudents)
	http.HandleFunc("/student",getStudent)
	http.HandleFunc("/groups",getGroups)

	log.Fatal(http.ListenAndServe(":8080",nil))

}