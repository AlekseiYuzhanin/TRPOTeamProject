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
	
	rows, err := db.Query("select studentfirstname,studentlastname,studentmiddlename,studentbirthdate,studententranceyear from student")
 	if err != nil {
  		log.Fatal(err)
 	}

 	defer rows.Close()

	students := []dbmodels.Student{}

	for rows.Next(){
		s := dbmodels.Student{}
		err := rows.Scan(&s.StudentFirstName,&s.StudentLastName,&s.StudentMiddleName,&s.StudentBirthDate,&s.StudentEntranceYear)
		if err!= nil{
			fmt.Println(err)
			continue
		}

		students = append(students, s)
	}

	json.NewEncoder(w).Encode(students)
}



func main(){
	http.HandleFunc("/students",getStudents)

	log.Fatal(http.ListenAndServe(":8080",nil))

}