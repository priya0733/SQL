-- dml
CREATE SCHEMA DML;
CREATE TABLE Test(
marks int,
id int,
divi varchar(50));

INSERT INTO Test(marks,id,divi)
VALUES (20,1,"A"),
(19,2,"A"),
(20,3,"A"),
(18,4,"A");

SELECT * FROM Test;

UPDATE Test SET marks=19 where id=1;

delete from Test where id=4;