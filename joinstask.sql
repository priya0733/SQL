CREATE SCHEMA Joins_Example;
USE Joins_Example;
CREATE TABLE Student(
ROLL_NO VARCHAR(255),
Name VARCHAR(255),
Address VARCHAR(255),
Phone VARCHAR(255),
Age int);

SELECT * FROM Student;

INSERT INTO Student(ROLL_NO,Name,Address,Phone,Age)
VALUES (1,"Shriya","Kudal","8767666218",21),
(2,"Mansi","Kudal","8767666318",21),
(3,"Shravni","Kudal","8767666418",21),
(4,"Harsh","Kudal","8767666118",21);

CREATE TABLE Student_Course(
Course_ID INT,
ROLL_NO Varchar(255));

INSERT INTO Student_Course(Course_ID,ROLL_NO)
VALUES
(101,"2"),
(102,"1"),
(103,"3"),
(104,"4");

SELECT * FROM Student_Course;

-- Inner Join
SELECT s.roll_no,s.name,s.address,s.age,sc.course_id 
FROM Student s
JOIN Student_Course sc ON s.roll_no=sc.roll_no;

SELECT sc.course_id,s.name,s.age
FROM Student s
INNER JOIN Student_Course sc;

SELECT sc.course_id,s.name,s.age
FROM Student_Course sc
INNER JOIN Student s ON s.ROLL_NO=sc.ROLL_NO;

-- LEFT JOIN
SELECT sc.course_id,s.name
FROM Student s
LEFT JOIN Student_Course sc
  ON sc.ROLL_NO=s.ROLL_NO;
  
  SELECT *
FROM Student s
LEFT JOIN Student_Course sc
  ON sc.ROLL_NO=s.ROLL_NO;

-- right join
SELECT Student.NAME,Student_Course.COURSE_ID 
FROM Student
RIGHT JOIN Student_Course 
ON Student_Course.ROLL_NO = Student.ROLL_NO;

-- FULL JOIN
SELECT Student.name,Student_Course.COURSE_ID
 FROM Student 
FULL JOIN Student_Course
ON Student_Course.ROLL_NO = Student.ROLL_NO;


