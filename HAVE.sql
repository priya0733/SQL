-- mysql having clause example

CREATE DATABASE Company;
USE Company;
CREATE TABLE Employee(
EmployeeID int,
Name varchar(20),
Gender varchar(20),
Salaray int,
Department varchar(20),
Experience varchar(20));

INSERT INTO Employee(EmployeeID,Name,Gender,Salaray,Department,Experience)
VALUES (1,"jhon","male",10000,"IT","2 yrs"),
(2,"bob","male",20000,"Sales","1 yrs"),
(3,"marry","female",30000,"IT","2 yrs"),
(4,"jack","male",20000,"Sales","1 yrs"),
(5,"jill","male",10000,"IT","2 yrs");

select * from Employee;
select Department,SUM(Salaray) as Salaray
from Employee group by Department;

-- In this condition, we will use the HAVING Clause.
select Department,SUM(Salaray) as Salaray
from Employee group by Department
having SUM(Salaray)>=10000;

create schema School;
create table student(
studentname varchar(50),
percentage int);

insert into student(studentname,percentage)
values("jhon",89),
("bob",88),
("marry",99),
("julie",78),
("rian",56);

select * from student;

select studentname,percentage
from student group by studentname,percentage
having percentage>75;

-- 


