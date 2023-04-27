INSERT INTO "Students"."Student"
("FName", "LName", "MName", "BDay", "EntranceYear")
values
( 'Геннадий', 'Портнов', 'Алексеевич', '2000-01-01', 2022),
( 'Валентин', 'Ярошинский', 'Сигизмундович', '2001-02-05', 2022),
( 'Артур', 'Карюгин', 'Наумович', '1997-08-15', 2022),
( 'Виталий', 'Шуйский', 'Тимурович', '2002-04-18', 2022),
( 'Инна', 'Юдина', 'Всеволодовна', '1999-09-12', 2022),
( 'Елена', 'Жирова', 'Серафимовна', '1998-05-04', 2022),
( 'Алексей', 'Стукалов', 'Ипполитович', '2003-12-01', 2021),
( 'Богдан', 'Букавицкий', 'Ипатович', '1992-06-25', 2022),
( 'Ярослав', 'Кахманова', 'Евграфович', '1991-01-01', 2022),
( 'Тамара', 'Поливанова', 'Анатолиевна', '1994-03-22', 2022),
( 'Кристина', 'Ахметова', 'Виталиевна', '2001-10-24', 2022),
( 'Жанна', 'Манторова', 'Емельяновна', '2000-09-02', 2020),
( 'Леонид', 'Кулумбаев', 'Филиппович', '2002-06-08', 2021),
( 'Анна', 'Бабанова', 'Трофимовна', '1999-12-30', 2021),
( 'Екатерина', 'Гарина', 'Серафимовна', '1997-06-21', 2020),
( 'Галина', 'Малкина', 'Константиновна', '2002-05-12', 2020),
( 'Любава', 'Курзыбова', 'Якововна', '2001-08-07', 2020),
( 'Иван', 'Мирохин', 'Евлампиевич', '2000-01-09', 2021),
( 'Богдан', 'Гуковский', 'Сигизмундович', '2001-02-15', 2022),
( 'Евгений', 'Горохин', 'Федосиевич', '2001-01-01', 2021),
( 'Данила', 'Казак', 'Левович', '2001-01-01', 2022),
( 'Ангелина', 'Ратникова', 'Вячеславовна', '2000-01-11', 2022),
( 'Инга', 'Ожегова', 'Никитевна', '1989-04-20', 2022),
( 'Арина', 'Шевелёка', 'Станиславовна', '2000-05-28', 2022),
( 'Ника', 'Кадетова', 'Филипповна', '2000-09-27', 2021);
INSERT INTO "Students"."Subject"
("Title") values
('Математика'),
('Химия'),
('Физическая культура'),
('Информатика'),
('Иностранный язык'),
('Русский язык'),
('Физика');
INSERT INTO "Students"."Group"
("Title")
values
('613'),
('411'),
('611');

INSERT INTO "Students"."Course"
("StudentId", "GroupId", "CourseYear")
VALUES
(1, 1, 2022),
(2, 2, 2022),
(3, 3, 2022),
(4, 1, 2022),
(5, 2, 2022),
(6, 3, 2022),
(7, 1, 2021),
(8, 2, 2022),
(9, 3, 2022),
(10, 1, 2022),
(11, 2, 2022),
(12, 3, 2020),
(13, 1, 2021),
(14, 2, 2021),
(15, 3, 2020),
(16, 1, 2020),
(17, 2, 2020),
(18, 3, 2021),
(19, 1, 2022),
(20, 2, 2021),
(21, 3, 2022),
(22, 1, 2022),
(23, 2, 2022);


INSERT INTO "Students"."StudentGrade"
("StudentId", "SubjectId", "Grade", "Year")
values

(1, 1, 4, 2022),
(1, 2, 5, 2022),
(1, 3, 4, 2022),
(1, 4, 5, 2022),
(1, 5, 5, 2022),
(1, 6, 4, 2022),
(1, 7, 5, 2022),
(1, 1, 4, 2023),
(1, 2, 5, 2023),
(1, 3, 4, 2023),
(1, 4, 5, 2023),
(1, 5, null, 2023),
(1, 6, 4, 2023),
(1, 7, null, 2023),

(2, 1, 4, 2022),
(2, 2, 4, 2022),
(2, 3, 4, 2022),
(2, 4, 3, 2022),
(2, 5, 5, 2022),
(2, 6, 4, 2022),
(2, 7, 4, 2022),
(2, 1, 4, 2023),
(2, 2, 5, 2023),
(2, 3, 4, 2023),
(2, 4, null, 2023),
(2, 5, 5, 2023),
(2, 6, 4, 2023),
(2, 7, null, 2023),

(3, 1, 4, 2022),
(3, 2, 2, 2022),
(3, 3, 4, 2022),
(3, 4, 3, 2022),
(3, 5, 2, 2022),
(3, 6, 4, 2022),
(3, 7, 4, 2022),
(3, 1, 2, 2023),
(3, 2, 5, 2023),
(3, 3, 4, 2023),
(3, 4, 5, 2023),
(3, 5, 2, 2023),
(3, 6, 4, 2023),
(3, 7, null, 2023),

(4, 1, 4, 2022),
(4, 2, 3, 2022),
(4, 3, 4, 2022),
(4, 4, 5, 2022),
(4, 5, 5, 2022),
(4, 6, 2, 2022),
(4, 7, null, 2022),
(4, 1, 5, 2023),
(4, 2, 4, 2023),
(4, 3, 3, 2023),
(4, 4, 3, 2023),
(4, 5, 2, 2023),
(4, 6, 4, 2023),
(4, 7, 5, 2023),

(5, 1, 5, 2022),
(5, 2, 5, 2022),
(5, 3, 2, 2022),
(5, 4, 5, 2022),
(5, 5, 3, 2022),
(5, 6, 4, 2022),
(5, 7, 5, 2022),
(5, 1, 4, 2023),
(5, 2, 3, 2023),
(5, 3, 5, 2023),
(5, 4, null, 2023),
(5, 5, 5, 2023),
(5, 6, 3, 2023),
(5, 7, 4, 2023),

(6, 1, 3, 2022),
(6, 2, 5, 2022),
(6, 3, 4, 2022),
(6, 4, 3, 2022),
(6, 5, 5, 2022),
(6, 6, 4, 2022),
(6, 7, 3, 2022),
(6, 1, 3, 2023),
(6, 2, 3, 2023),
(6, 3, 5, 2023),
(6, 4, 3, 2023),
(6, 5, 5, 2023),
(6, 6, 3, 2023),
(6, 7, 4, 2023),

(7, 1, 4, 2021),
(7, 2, 5, 2021),
(7, 3, 4, 2021),
(7, 4, 3, 2021),
(7, 5, 5, 2021),
(7, 6, 4, 2021),
(7, 7, 3, 2021),
(7, 1, 3, 2022),
(7, 2, 5, 2022),
(7, 3, 4, 2022),
(7, 4, 3, 2022),
(7, 5, 5, 2022),
(7, 6, 4, 2022),
(7, 7, 5, 2022),
(7, 1, 3, 2023),
(7, 2, 3, 2023),
(7, 3, 5, 2023),
(7, 4, 2, 2023),
(7, 5, 2, 2023),
(7, 6, 3, 2023),
(7, 7, null, 2023),

(8, 1, 4, 2022),
(8, 2, 5, 2022),
(8, 3, 4, 2022),
(8, 4, 5, 2022),
(8, 5, 5, 2022),
(8, 6, 4, 2022),
(8, 7, 5, 2022),
(8, 1, 4, 2023),
(8, 2, 5, 2023),
(8, 3, 4, 2023),
(8, 4, 5, 2023),
(8, 5, null, 2023),
(8, 6, 4, 2023),
(8, 7, null, 2023),

(9, 1, 4, 2022),
(9, 2, 4, 2022),
(9, 3, 4, 2022),
(9, 4, 3, 2022),
(9, 5, 5, 2022),
(9, 6, 4, 2022),
(9, 7, 4, 2022),
(9, 1, 4, 2023),
(9, 2, 5, 2023),
(9, 3, 4, 2023),
(9, 4, null, 2023),
(9, 5, 5, 2023),
(9, 6, 4, 2023),
(9, 7, null, 2023),

(10, 1, 4, 2022),
(10, 2, 2, 2022),
(10, 3, 4, 2022),
(10, 4, 3, 2022),
(10, 5, 2, 2022),
(10, 6, 4, 2022),
(10, 7, 4, 2022),
(10, 1, 2, 2023),
(10, 2, 5, 2023),
(10, 3, 4, 2023),
(10, 4, 5, 2023),
(10, 5, 2, 2023),
(10, 6, 4, 2023),
(10, 7, null, 2023),

(11, 1, 4, 2022),
(11, 2, 3, 2022),
(11, 3, 4, 2022),
(11, 4, 5, 2022),
(11, 5, 5, 2022),
(11, 6, 2, 2022),
(11, 7, null, 2022),
(11, 1, 5, 2023),
(11, 2, 4, 2023),
(11, 3, 3, 2023),
(11, 4, 3, 2023),
(11, 5, 2, 2023),
(11, 6, 4, 2023),
(11, 7, 5, 2023),

(12, 1, 5, 2022),
(12, 2, 5, 2022),
(12, 3, 2, 2022),
(12, 4, 5, 2022),
(12, 5, 3, 2022),
(12, 6, 4, 2022),
(12, 7, 5, 2022),
(12, 1, 4, 2023),
(12, 2, 3, 2023),
(12, 3, 5, 2023),
(12, 4, null, 2023),
(12, 5, 5, 2023),
(12, 6, 3, 2023),
(12, 7, 4, 2023),

(13, 1, 4, 2020),
(13, 2, 5, 2020),
(13, 3, 4, 2020),
(13, 4, 3, 2020),
(13, 5, 5, 2020),
(13, 6, 4, 2020),
(13, 7, 3, 2020),
(13, 1, 4, 2021),
(13, 2, 5, 2021),
(13, 3, 4, 2021),
(13, 4, 3, 2021),
(13, 5, 5, 2021),
(13, 6, 4, 2021),
(13, 7, 3, 2021),
(13, 1, 3, 2022),
(13, 2, 5, 2022),
(13, 3, 4, 2022),
(13, 4, 3, 2022),
(13, 5, 5, 2022),
(13, 6, 4, 2022),
(13, 7, 5, 2022),
(13, 1, 3, 2023),
(13, 2, 3, 2023),
(13, 3, 5, 2023),
(13, 4, 2, 2023),
(13, 5, 2, 2023),
(13, 6, 3, 2023),
(13, 7, null, 2023),

(14, 1, 4, 2021),
(14, 2, 5, 2021),
(14, 3, 4, 2021),
(14, 4, 3, 2021),
(14, 5, 5, 2021),
(14, 6, 4, 2021),
(14, 7, 3, 2021),
(14, 1, 3, 2022),
(14, 2, 5, 2022),
(14, 3, 4, 2022),
(14, 4, 3, 2022),
(14, 5, 5, 2022),
(14, 6, 4, 2022),
(14, 7, 5, 2022),
(14, 1, 3, 2023),
(14, 2, 3, 2023),
(14, 3, 5, 2023),
(14, 4, 2, 2023),
(14, 5, 2, 2023),
(14, 6, 3, 2023),
(14, 7, null, 2023),

(15, 1, 4, 2021),
(15, 2, 5, 2021),
(15, 3, 4, 2021),
(15, 4, 3, 2021),
(15, 5, 5, 2021),
(15, 6, 4, 2021),
(15, 7, 3, 2021),
(15, 1, 3, 2022),
(15, 2, 5, 2022),
(15, 3, 4, 2022),
(15, 4, 3, 2022),
(15, 5, 5, 2022),
(15, 6, 4, 2022),
(15, 7, 5, 2022),
(15, 1, 3, 2023),
(15, 2, 3, 2023),
(15, 3, 5, 2023),
(15, 4, 2, 2023),
(15, 5, 2, 2023),
(15, 6, 3, 2023),
(15, 7, null, 2023),

(16, 1, 4, 2020),
(16, 2, 5, 2020),
(16, 3, 4, 2020),
(16, 4, 3, 2020),
(16, 5, 5, 2020),
(16, 6, 4, 2020),
(16, 7, 3, 2020),
(16, 1, 4, 2021),
(16, 2, 5, 2021),
(16, 3, 4, 2021),
(16, 4, 3, 2021),
(16, 5, 5, 2021),
(16, 6, 4, 2021),
(16, 7, 3, 2021),
(16, 1, 3, 2022),
(16, 2, 5, 2022),
(16, 3, 4, 2022),
(16, 4, 3, 2022),
(16, 5, 5, 2022),
(16, 6, 4, 2022),
(16, 7, 5, 2022),
(16, 1, 3, 2023),
(16, 2, 3, 2023),
(16, 3, 5, 2023),
(16, 4, 2, 2023),
(16, 5, 2, 2023),
(16, 6, 3, 2023),
(16, 7, null, 2023),

(17, 1, 4, 2020),
(17, 2, 5, 2020),
(17, 3, 4, 2020),
(17, 4, 3, 2020),
(17, 5, 5, 2020),
(17, 6, 4, 2020),
(17, 7, 3, 2020),
(17, 1, 4, 2021),
(17, 2, 5, 2021),
(17, 3, 4, 2021),
(17, 4, 3, 2021),
(17, 5, 5, 2021),
(17, 6, 4, 2021),
(17, 7, 3, 2021),
(17, 1, 3, 2022),
(17, 2, 5, 2022),
(17, 3, 4, 2022),
(17, 4, 3, 2022),
(17, 5, 5, 2022),
(17, 6, 4, 2022),
(17, 7, 5, 2022),
(17, 1, 3, 2023),
(17, 2, 3, 2023),
(17, 3, 5, 2023),
(17, 4, 2, 2023),
(17, 5, 2, 2023),
(17, 6, 3, 2023),
(17, 7, null, 2023),

(18, 1, 4, 2020),
(18, 2, 5, 2020),
(18, 3, 4, 2020),
(18, 4, 3, 2020),
(18, 5, 5, 2020),
(18, 6, 4, 2020),
(18, 7, 3, 2020),
(18, 1, 4, 2021),
(18, 2, 5, 2021),
(18, 3, 4, 2021),
(18, 4, 3, 2021),
(18, 5, 5, 2021),
(18, 6, 4, 2021),
(18, 7, 3, 2021),
(18, 1, 3, 2022),
(18, 2, 5, 2022),
(18, 3, 4, 2022),
(18, 4, 3, 2022),
(18, 5, 5, 2022),
(18, 6, 4, 2022),
(18, 7, 5, 2022),
(18, 1, 3, 2023),
(18, 2, 3, 2023),
(18, 3, 5, 2023),
(18, 4, 2, 2023),
(18, 5, 2, 2023),
(18, 6, 3, 2023),
(18, 7, null, 2023),

(19, 1, 4, 2021),
(19, 2, 5, 2021),
(19, 3, 4, 2021),
(19, 4, 3, 2021),
(19, 5, 5, 2021),
(19, 6, 4, 2021),
(19, 7, 3, 2021),
(19, 1, 3, 2022),
(19, 2, 5, 2022),
(19, 3, 4, 2022),
(19, 4, 3, 2022),
(19, 5, 5, 2022),
(19, 6, 4, 2022),
(19, 7, 5, 2022),
(19, 1, 3, 2023),
(19, 2, 3, 2023),
(19, 3, 5, 2023),
(19, 4, 2, 2023),
(19, 5, 2, 2023),
(19, 6, 3, 2023),
(19, 7, null, 2023),

(20, 1, 3, 2022),
(20, 2, 5, 2022),
(20, 3, 4, 2022),
(20, 4, 3, 2022),
(20, 5, 5, 2022),
(20, 6, 4, 2022),
(20, 7, 5, 2022),
(20, 1, 3, 2023),
(20, 2, 3, 2023),
(20, 3, 5, 2023),
(20, 4, 2, 2023),
(20, 5, 2, 2023),
(20, 6, 3, 2023),
(20, 7, null, 2023),

(21, 1, 3, 2022),
(21, 2, 5, 2022),
(21, 3, 4, 2022),
(21, 4, 3, 2022),
(21, 5, 5, 2022),
(21, 6, 4, 2022),
(21, 7, 5, 2022),
(21, 1, 3, 2023),
(21, 2, 3, 2023),
(21, 3, 5, 2023),
(21, 4, 2, 2023),
(21, 5, 2, 2023),
(21, 6, 3, 2023),
(21, 7, null, 2023),

(22, 1, 3, 2022),
(22, 2, 5, 2022),
(22, 3, 4, 2022),
(22, 4, 3, 2022),
(22, 5, 5, 2022),
(22, 6, 4, 2022),
(22, 7, 5, 2022),
(22, 1, 3, 2023),
(22, 2, 3, 2023),
(22, 3, 5, 2023),
(22, 4, 2, 2023),
(22, 5, 2, 2023),
(22, 6, 3, 2023),
(22, 7, null, 2023),

(23, 1, 3, 2022),
(23, 2, 5, 2022),
(23, 3, 4, 2022),
(23, 4, 3, 2022),
(23, 5, 5, 2022),
(23, 6, 4, 2022),
(23, 7, 5, 2022),
(23, 1, 3, 2023),
(23, 2, 3, 2023),
(23, 3, 5, 2023),
(23, 4, 2, 2023),
(23, 5, 2, 2023),
(23, 6, 3, 2023),
(23, 7, null, 2023);


















