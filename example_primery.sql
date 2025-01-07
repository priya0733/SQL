CREATE DATABASE  EXAMPLEPRI_FOR;
USE EXAMPLEPRI_FOR;

DROP DATABASE EXAMPLEPRI_FOR;
CREATE TABLE table1(
id INT PRIMARY KEY,
name VARCHAR(50));

DESC table1;
-- DROP PRIMARY KEY
ALTER TABLE table1 DROP PRIMARY KEY;
-- READDITION OF PRIMARY KEY
ALTER TABLE table1 ADD PRIMARY KEY(id);
-- PRIMARY KEY FOR MULTIPLE COLUMNS

CREATE TABLE tablename(
id int,
Name varchar(50),
primary key(id,Name));

CREATE TABLE table2(
id INT,
name VARCHAR(50),
FOREIGN KEY(id) references table1(id));

DROP TABLE table2;
SHOW CREATE TABLE table2; -- show query 
desc  table2;  -- desc table

ALTER TABLE table2 DROP FOREIGN KEY table2_ibfk_2;  -- ** 

DESC table2;


select * from table2;
SELECT VERSION();

-- Applying ON DELETE CASCADE and ON DELETE NULL on FOREIGN KEY

CREATE TABLE table3(
id int,
name varchar(50),
FOREIGN KEY (id) references table1(id) ON DELETE CASCADE);

DROP TABLE table3;











