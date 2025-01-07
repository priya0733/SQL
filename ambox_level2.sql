CREATE DATABASE AMDOCSL2;
USE AMDOCSL2;

CREATE TABLE WORKER(
WORKER_ID INT NOT NULL PRIMARY KEY,
FIRST_NAME VARCHAR(45),
LAST_NAME VARCHAR(45),
SALARY INT,
JOINING_DATE DATETIME,
DEPARTMENT VARCHAR(45));

DROP TABLE WORKER;

INSERT INTO WORKER()
VALUES
(001,'Monika','Arora',100000,'2021-02-20 09:00:00','HR'),
(002,'Niharika','Verma',80000,'2021-06-11 09:00:00','Admin'),
(003,'Vishal','Singhal',300000,'2021-02-20 09:00:00','HR'),
(004,'Amitabh','Singh',500000,'2021-02-20 09:00:00','Admin'),
(005,'Vivek','Bharti',500000,'2021-06-11 09:00:00','Admin'),
(006,'Vipul','Diwan',200000,'2021-06-11 09:00:00','Account'),
(007,'Satish','Kumar',75000,'2021-01-20 09:00:00','Account'),
(008,'Geetika','Chauhan',90000,'2021-04-11 09:00:00','Admin');

select * from worker;

CREATE TABLE Bonus (
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT,
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES WORKER(WORKER_ID) ON DELETE CASCADE);
    
INSERT INTO Bonus () VALUES
    (1, 5000,'2023-02-20'),
    (2, 3000,'2023-06-11'),
    (3, 4000,'2023-02-20'),
    (1, 4500,'2023-02-20'),
    (2, 3500,'2023-06-11');

drop table bonus;

CREATE TABLE Title (
    WORKER_REF_ID INT,
    WORKER_TITLE CHAR(25),
    AFFECTED_FROM DATETIME,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES Worker(WORKER_ID) ON DELETE CASCADE);


INSERT INTO Title () VALUES
    (1,'Manager','2023-02-20 00:00:00'),
    (2,'Executive','2023-06-11 00:00:00'),
    (8,'Executive','2023-06-11 00:00:00'),
    (5,'Manager','2023-06-11 00:00:00'),
    (4,'Asst. Manager','2023-06-11 00:00:00'),
    (7,'Executive','2023-06-11 00:00:00'),
    (6,'Lead','2023-06-11 00:00:00'),
    (3,'Lead','2023-06-11 00:00:00');
     
-- Q-1. Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.
Select FIRST_NAME AS WORKER_NAME from Worker;

-- 2. Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper case.
SELECT UPPER(FIRST_NAME) FROM WORKER;

-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.
Select distinct DEPARTMENT from Worker;

-- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from the Worker table.
select substring(FIRST_NAME,1,3) FROM WORKER;

-- Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.
SELECT INSTR(FIRST_NAME,'a') from Worker WHERE FIRST_NAME='amitabh';  -- position

-- Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from worker order by FIRST_NAME ASC;

