create schema Testdb;
use testdb;

-- crete table student with unique key:
create table Student(
StudId int NOT NULL UNIQUE,
Name varchar(45),
Age int,
Email varchar(45),
City varchar(25));

insert into Student(StudId,Name,Age,Email,City)
values(1,"shriya",21,"shriyapalkar06@gmail.com","Kudal"),
(2,"mrunal",20,"mrunal@gmail.com","satara"),
(3,"shravni",22,"shravni@gmail.com","kudal"),
(4,"revati",23,"revati@gmail.com","Kop"),
(5,"mansi",24,"mansi@gmail.com","Kudal");

select * from Student;


--  first INSERT query executes correctly, but the second statement fails and gives an error that says: Duplicate entry '1' for key Stud_ID:
insert into Student(StudId,Name,Age,Email,City)
values(1,"rio",22,"riomail.com","kop");

-- Create multiple unique coloumns
create table Student2(
Stud_Id int,
Roll_no int,
Name varchar(45) NOT NULL,
Age int,
Email varchar(45),
constraint uc_rollno_email unique(Roll_no,Email));

-- to verify unique key
show index from Student2;


