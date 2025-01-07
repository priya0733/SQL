create schema nest_sql2;
use nest_sql2;
create table employees(
emp_id int,
emp_name varchar(100),
dept_id int);

insert into employees(emp_id,emp_name,dept_id)
values (1,"John",1),
 (2,"Marry",2),
  (3,"Bob",1),
   (4,"Alice",3),
    (5,"Tom",1);
    
    select * from employees;
    
    create table departments(
    dept_id int,
    dept_name varchar(100));
    
    insert into departments(dept_id,dept_name)
    values(1,"sales"),
    (2,"marketing"),
    (3,"finance");
    
    select * from departments;
    
    create table sales
    (sale_id int,
    emp_id int,
    sale_amt int);
    
    insert into sales(sale_id,emp_id,sale_amt)
    values(1,1,1000),
    (2,2,2000),
    (3,3,3000),
    (4,1,4000),
    (5,5,5000),
    (6,3,6000),
    (7,2,7000);
    
    select * from sales;
    
    select emp_name from employees
    where dept_id in (select dept_id from departments where dept_name="sales");
    
    -- Find the names of all employees who have made a sale
    select emp_name from employees
    where exists (select emp_id from sales where employees.emp_id=sales.emp_id);
     
     select emp_name from employees
     where exists(select emp_id from sales
     where employees.emp_id=sales.emp_id);
     
SELECT emp_id FROM employees 
WHERE emp_id = ALL (SELECT emp_id 
FROM sales WHERE sale_amt >= 1000);




