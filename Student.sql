select*from student.students_info;

-- Writes sql scripts that shows all students record resideng Laguna
SELECT*FROM student.students_info WHERE city = 'Laguna';

-- Writes sql scripts that shows stuedents records with sem_grade 80
SELECT*FROM student.students_info WHERE sem_grade = '80';

-- Writes sql scripts that shows all female students (record)
SELECT*FROM student.students_info WHERE gender = 'F';

-- Writes sql scripts that shows all students records with youngest entry age
SELECT*FROM student.students_info WHERE entry_age = '17';
SELECT MIN(entry_age) FROM student.students_info;

-- Writes sql scripts that shows the records of students with the highest final_exam
SELECT*FROM student.students_info WHERE final_exam = '100';
SELECT MAX(final_exam) FROM student.students_info;

-- Writes sql scripts that shows the students records who are not 4th year
SELECT *FROM student.students_info WHERE NOT status = '4TH YEAR';

-- Sort/Arrange all students records according to their sem_grade(Highest to lowest)
SELECT sem_grade FROM student.students_info ORDER BY sem_grade DESC;

-- Student/s who are male and 1st year
SELECT*FROM student.students_info WHERE gender = 'M' AND status = '1ST YEAR';

