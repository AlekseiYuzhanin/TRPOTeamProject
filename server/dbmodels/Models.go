package dbmodels

import "database/sql"


type Student struct{
	StudentId int `json:"studentid"`
	StudentFirstName string `json:"studentfirstname"`
	StudentLastName string `json:"studentlastname"`
	StudentMiddleName string `json:"studentmiddlename"`
	StudentBirthDate string `json:"studentbirthdate"`
	StudentEntranceYear int `json:"studententranceyear"`
}

type Subject struct{
	SubjectId int `json:"subjectid"`
	SubjectTitle string `json:"subjecttitle"`
}

type StudentsGroup struct{
	StudentsGroupId int `json:"studentsgroupid"`
	StudentsGroupTitile string `json:"studentsgrouptitle"`
}

type StudentGrade struct{
	StudentGradeStudentNumber Student `json:"studentgradestudentnumber"`
	StudentGradeSubjectNumber Subject `json:"studentgradesubjectnumber"`
	StudentGrade sql.NullFloat64 `json:"studentgrade"`
	StudentGradeYear int `json:"studentgradeyear"`
}

type Course struct{
	CourseStudentNumber Student `json:"coursestudentnumber"`
	CourseGroupNumber StudentsGroup `json:"coursegroupnumber"`
	CourseYear int `json:"courseyear"`
}