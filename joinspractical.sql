create schema data;
use data;
create table stud1
(id int primary key auto_increment,
name varchar(50),
age int);

insert into stud1(id,name,age) values
(1,"shriya",21),
(2,"shravani",22),
(3,"mansi",21);

create table stud2
(id int primary key auto_increment,
marks int,
city varchar(50),
pin int);

insert into stud2(id,marks,city,pin) values
(1,20,"kudal",4165),
(2,19,"kop",2165),
(3,19,"kudal",4165),
(4,20,"kop",2165);

select * from stud1 join stud2 on stud1.id=stud2.id;

select * from stud1 inner join stud2;

SELECT *
FROM Stud1
LEFT JOIN Stud2
  ON stud1.id=stud2.id;
  
  SELECT *
FROM Stud1
RIGHT JOIN Stud2
  ON stud1.id=stud2.id;
  
  SELECT *
FROM Stud1
FULL JOIN Stud2;

select * from stud1;
select * from stud2;



