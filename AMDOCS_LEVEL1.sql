create database AMDOCS;
USE AMDOCS;

CREATE TABLE STUDENT(
SNO INT,
NAME VARCHAR(50),
MARKS INT);

INSERT INTO STUDENT(SNO , NAME ,MARKS)
VALUES(101,"HAFIS P A",70),
(102,"GOKUL KRISHNA",65),
(103,"ALTHAFF MOOSA",70),
(104,"GAYATRI UNNKRISHAN",71),
(105,"ANN MARIA SAJI",69);

-- Fetch (Display) all the details from the table STUDENT.
SELECT * FROM STUDENT;

-- Display  name and mark of all the details from the table STUDENT.
SELECT NAME, MARKS FROM STUDENT;
 -- Fetch the details of the student whose Sno is 100.
 SELECT NAME,MARKS FROM STUDENT WHERE SNO = 101;
 -- Display  name and mark of the student whose name is Altaff Moosa.
 SELECT NAME , MARKS FROM STUDENT WHERE NAME = "ALTHAFF MOOSA";
 -- Display all the details of students whose mark is greater than or equal to 70
 SELECT * FROM STUDENT WHERE MARKS >=70;
 -- Display all the details of students whose mark is greater than 70.
 SELECT * FROM STUDENT WHERE MARKS >70;
 -- Write a Query to find Maximum (Highest) Mark from the table STUDENT.
 SELECT MAX(MARKS) FROM STUDENT;
 -- Write a Query to find Minimum (Lowest) Mark from the table.
 SELECT MIN(MARKS) FROM STUDENT;
 --  Write a Query to find Total Mark from the table STUDENT.
 SELECT SUM(MARKS) FROM STUDENT;
 --  Write a Query to find Average Mark from the table STUDENT.
  SELECT AVG(MARKS) FROM STUDENT;
 -- Write a Query to Sort (Ascending order) table STUDENT based on Name.
 SELECT * FROM STUDENT ORDER BY NAME ASC;
 --  Delete the table student.


