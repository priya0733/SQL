create schema PKExample;
use PKExample;
create table Login(
Login_id int AUTO_INCREMENT PRIMARY KEY,
username varchar(45),
password varchar(45),
email varchar(55));

insert into Login(Login_id,username,password,email)
values(101,"shriya06","shriya1162","shriya.com"),
(102,"riya06","riya1162","riya.com");

select * from Login;

-- first insert query executes successfully. While the second insert statement fails and gives an error that says: Duplicate entry for the primary key column.
insert into Login(Login_id,username,password,email)
values(101,"shriya06","shriya1162","shriya.com");

-- primary key for multiple columns:
create table Students(
Student_ID int,
Roll_No int,
Name varchar(45) NOT NULL,
Age int,
City varchar(25),
Primary Key(Student_ID,Roll_No));



