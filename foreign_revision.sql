create database examplePRInFor;
use examplePRInFor;

CREATE TABLE table1 (
id INT PRIMARY KEY,
name VARCHAR(50));

DESC table1;

-- drop primary key

alter table table1 drop primary key;

-- readdition of primary key

alter table table1 add primary key(id);

-- COMPOSITE PRIMARY KEY
-- primary key on multiple columns in a composite way

CREATE TABLE tablename(
id int,
Name varchar (50),
primary key(id,Name));

-- create table with foreign key
create table table2(
id int,
name varchar(45),
foreign key(id) references table1(id));

SHOW CREATE TABLE table2;

drop table table2;
ALTER TABLE table2 DROP FOREIGN KEY table2_ibfk_1;

-- Applying ON DELETE CASCADE and ON DELETE NULL on FOREIGN KEY
CREATE TABLE table3 (
  id INT,
  name VARCHAR(50),
  FOREIGN KEY (id) REFERENCES table1(id) ON DELETE CASCADE
);
