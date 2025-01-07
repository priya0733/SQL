create schema DDL;
use DDL;

-- create table
create table Test(
id int,
name varchar(50),
address varchar(50),
age int);

-- alter
alter table test
add city varchar(50);

-- truncate 
truncate table test;

-- drop
drop table test;

select * from test;
