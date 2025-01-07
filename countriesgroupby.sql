create schema mysql_test;
use mysql_test;
CREATE TABLE countries(
country_id int unique,
country_name varchar(50),
region_id int unique);

INSERT INTO countries(country_id,country_name,region_id)
VALUES (91,"INDIA",101),
(06,"USA",111),
(98,"Austria",212),
(77,"Japan",241);

select * from countries;
show index from countries;

select * FROM countries where country_name like "I%";

CREATE TABLE job_history(
employee_id INT NOT NULL,
start_date DATE NOT NULL,
end_date DATE NOT NULL,
job_id INT NOT NULL PRIMARY KEY,
department_id INT NOT NULL);

INSERT INTO job_history (employee_id,start_date,end_date,job_id,department_id)
VALUES (1,"2023-02-02","2024-01-02",101,1),
(2,"2023-02-02","2024-01-02",102,1),
(3,"2023-02-02","2024-01-02",103,1),
(4,"2023-02-02","2024-01-02",104,1);

SELECT * FROM job_history;
DROP TABLE job_history;

create table Jobs(
job_id int,
jbid int,
empinfo varchar(20) not null,
constraint jb_id foreign key (jbid) references job_history(job_id));
SHOW INDEX FROM JOBS;

create table sessions(
id int primary key,
userId int not null,
duration decimal not null);

insert into sessions(id,userId,duration)
values(1,101,1.2),
(2,102,4.2),
(3,103,8.2),
(4,104,1.2),
(5,105,12.2);



select * from sessions;
drop table sessions;

select userId from sessions where duration>1;
select userId,avg(duration) from sessions group by userId,duration having duration>1;

