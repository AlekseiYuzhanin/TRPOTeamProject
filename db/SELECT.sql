
--Список всех групп
select * from "Group";

--Список всех студентов
select * from "Student";

--Список всех предметов
select * from "Subject";

--Упорядочить список студентов по среднему баллу и получить его. БЕЗ ГРУППЫ
select s."Id" , s."FName", s."LName", s."MName", s."BDay" , avg(sg."Grade") "AverageGrade"  from "StudentGrade" sg
inner join "Student" s on s."Id" = sg."StudentId" 
inner join "Course" c on c."StudentId" = s."Id"
where sg."Year" = 2023 -- здесь указываешь год за который хочешь средний балл по студентам
group by s."Id" 
order by avg(sg."Grade");

--Упорядочить список студентов по среднему баллу и получить его. С ГРУППОЙ
select s."Id" , s."FName", s."LName", s."MName", s."BDay" , g."Title" "GroupNumber" , avg(sg."Grade") "AverageGrade"  from "StudentGrade" sg
inner join "Student" s on s."Id" = sg."StudentId" 
inner join "Course" c on c."StudentId" = s."Id"
inner join "Group" g on g."Id" = c."GroupId" 
where sg."Year" = 2023 -- здесь указываешь год за который хочешь средний балл по студентам
group by s."Id", g."Title" 
order by avg(sg."Grade");


--Средний балл определенного студента по определенному предмету (без предмета)
select s."Id" , s."FName", s."LName", s."MName", s."BDay" , g."Title" "GroupNumber" , avg(sg."Grade") "AverageGrade"  from "StudentGrade" sg
inner join "Student" s on s."Id" = sg."StudentId" 
inner join "Course" c on c."StudentId" = s."Id"
inner join "Group" g on g."Id" = c."GroupId" 
where s."Id" = 1 and sg."SubjectId" = 2 -- здесь айди студика и предмета по которому хочешь узнать средний балл за все года
group by s."Id", g."Title" 
order by avg(sg."Grade");

--Средний балл определенного студента по определенному предмету (с предметом)
select s."Id" , s."FName", s."LName", s."MName", s."BDay" , g."Title" "GroupNumber" , avg(sg."Grade") "AverageGrade", sb."Title" from "StudentGrade" sg
inner join "Student" s on s."Id" = sg."StudentId" 
inner join "Course" c on c."StudentId" = s."Id"
inner join "Group" g on g."Id" = c."GroupId"
inner join "Subject" sb on sb."Id" = sg."SubjectId"  
where s."Id" = 1 and sg."SubjectId" = 2 -- здесь айди студика и предмета по которому хочешь узнать средний балл за все года
group by s."Id", g."Title", sb."Title"  
order by avg(sg."Grade");

--Средний балл всех студентов по определенному предмету (с предметом)
select s."Id" , s."FName", s."LName", s."MName", s."BDay" , g."Title" "GroupNumber" , avg(sg."Grade") "AverageGrade", sb."Title" from "StudentGrade" sg
inner join "Student" s on s."Id" = sg."StudentId" 
inner join "Course" c on c."StudentId" = s."Id"
inner join "Group" g on g."Id" = c."GroupId"
inner join "Subject" sb on sb."Id" = sg."SubjectId"  
where sg."SubjectId" = 2 -- здесь айди предмета по которому хочешь узнать средний балл всех студиков за все года
group by s."Id", g."Title", sb."Title"  
order by avg(sg."Grade");





