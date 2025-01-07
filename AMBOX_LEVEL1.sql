create database ambox;
use ambox;

create table student(
sno int,
name varchar(45),
mark int);

insert into student()
values 
(100,'Hafis P A',70),
(102,'Gokul Krishna',65),
(103,'Althaff Moosa',71),
(104,'Ann Maris Saji',69);

select * from student;

-- 1. Fetch (Display) all the details from the table STUDENT.
SELECT * FROM STUDENT; -- FETCH/READ/DISPLAY/ALL
SHOW CREATE TABLE STUDENT; -- SHOW
DESC TABLE STUDENT; -- DESCRIBE


-- 2. Display  name and mark of all the details from the table STUDENT.

SELECT NAME,MARK FROM STUDENT;

-- 3. Fetch the details of the student whose Sno is 100.

SELECT * FROM STUDENT WHERE SNO=100;

-- 4. Display  name and mark of the student whose name is Altaff Moosa.

SELECT NAME,MARK FROM STUDENT WHERE NAME='Altaff Moosa';

-- 5. Display all the details of students whose mark is greater than or equal to 70.

SELECT * FROM STUDENT WHERE MARK>=70;

-- 6. Display all the details of students whose mark is greater than 70.

SELECT * FROM STUDENT WHERE MARK>70;

-- 7.  Write a Query to find Maximum (Highest) Mark from the table STUDENT.
SELECT MAX(MARK) FROM STUDENT;

-- 8. Write a Query to find Minimum (Lowest) Mark from the table.
SELECT MIN(MARK) FROM STUDENT;

-- 9. Write a Query to find Total Mark from the table STUDENT.
SELECT SUM(MARK) FROM STUDENT;

-- 10. Write a Query to find Average Mark from the table STUDENT.
SELECT AVG(MARK) FROM STUDENT;

-- 11. Write a Query to Sort (Ascending order) table STUDENT based on Name.

SELECT * FROM STUDENT
ORDER BY NAME ASC;

-- 12. Delete the table student

