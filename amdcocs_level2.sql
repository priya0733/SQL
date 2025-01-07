create database AmdoxL2;
use AmdoxL2;
create table Worker(
WORKER_ID int not null primary key ,
FIRST_NAME varchar (100),
LAST_NAME  varchar (100),
SALARY int , 
JOINING_DATE datetime, 
DEPARTMENT varchar (100));

insert into Worker(WORKER_ID,FIRST_NAME ,LAST_NAME,SALARY, JOINING_DATE ,DEPARTMENT)
VALUES(001,"Monika","Arora",100000,"2021-02-20 09:00:00","HR"),
(002,"Niharika","Verma",80000,"2021-06-11 09:00:00","Admin"),
(003,"Vishal","Singhal",3000000,"2021-02-20 09:00:00","HR"),
(004,"Amitabh","Singh",5000000,"2021-02-20 09:00:00","Admin"),
(005,"Vivek","Bhati",500000,"2021-06-11 09:00:00","Admin"),
(006,"Vipul","Diwan",200000,"2021-06-11 09:00:00","Account"),
(007,"Satish","Kumar",75000,"2021-01-20 09:00:00","Account"),
(008,"Geetika","Chauhan",90000,"2021-04-11 09:00:00","Admin");

select * from Worker;

# new table 
create TABLE Bonus (
    WORKER_REF_ID INT,
    BONUS_DATE DATETIME,
   BONUS_AMOUNT INT,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE
);
insert  into Bonus(WORKER_REF_ID,BONUS_DATE,  BONUS_AMOUNT )
values (1,"2023-02-20 00.00.00", 5000),
(2,"2023-06-11 00.00.00", 3000),
(3,"2023-02-20 00.00.00", 4000),
(4,"2023-02-20 00.00.00", 4500),
(5,"2023-06-11 00.00.00", 3500);

select * from Bonus;

use AmdoxL2;
CREATE TABLE Title (
    WORKER_REF_ID INT,
    WORKER_TITLE CHAR(25),
    AFFECTED_FROM DATETIME,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON delete cascade
);

INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
    (1, 'Manager', '2023-02-20 00:00:00'),
    (2, 'Executive', '2023-06-11 00:00:00'),
    (8, 'Executive', '2023-06-11 00:00:00'),
    (5, 'Manager', '2023-06-11 00:00:00'),
    (4, 'Asst. Manager', '2023-06-11 00:00:00'),
    (7, 'Executive', '2023-06-11 00:00:00'),
    (6, 'Lead', '2023-06-11 00:00:00'),
    (3, 'Lead', '2023-06-11 00:00:00');
    
    select * from Title; 
    
#Q-1. Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.
 Select FIRST_NAME AS WORKER_NAME from Worker;
#2. Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper case.    
 select upper(FIRST_NAME ) from Worker;
#Q-3. Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.
 select distinct DEPARTMENT from Worker;
#Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from the Worker table.
Select substring(FIRST_NAME,1,3) from Worker;
#Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.
select instr(FIRST_NAME,'t') FROM Worker where FIRST_NAME ="amitabh";