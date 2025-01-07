create schema nested_sql;
use nested_sql;
create table employees(
id int primary key,
name varchar(100) not null,
salary int not null,
role varchar(100) not null);

create table awards(
id int primary key,
employee_id int not null,
award_date date not null);

insert into employees(id,name,salary,role)
values
(1,"shriya",40000,"Developer"),
(2,"harsh",50000,"Managaer"),
(3,"riya",60000,"Developer"),
(4,"mansi",50000,"Manager");

insert into awards(id,employee_id,award_date)
values
(1,1,"2022-04-01"),
(2,3,"2022-05-01");

select * from employees;

select * from awards;

-- independent nested loops
select employee_id from awards;
-- select all employee who won an award
select id,name from employees
where id in (select employee_id from awards);

-- Select all employees who never won an award.
select id,name from employees
where id not in (select employee_id from awards);

-- Select all Developers who earn more than all the Managers
select * from employees 
where role="Developer"
and salary>all(select salary from employees where role="manager");

-- Select all Developers who earn more than any Manager
select * from employees 
where role="Developer"
and salary>any (select salary from employees where role="manager");

-- Co-related Nested Queries
-- Select all employees whose salary is above the average salary of employees in their role.

select * from employees emp1
where salary > (
select avg(salary)
from employees emp2
where emp1.role=emp2.role);

-- find average salary by role
select role,avg(salary) from employees group by role;