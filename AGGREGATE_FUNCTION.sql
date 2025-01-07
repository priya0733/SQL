CREATE DATABASE AGGREGATE_FUNCTION;
USE AGGREGATE_FUNCTION;

CREATE TABLE WEATHER(
City Varchar(100),
State varchar(100),
Weather_Date date,
High_Temperature int,
Low_Temperature int,
Precipitation float,
Description varchar(100));

INSERT INTO WEATHER()
VALUES("SINDHUDURG","MAHARSHTRA","2024-09-25",33,12,1.5,"DRY"),
("KOLHAPUR","MAHARSHTRA","2024-06-25",23,12,1.3,"COLD"),
("SATARA","MAHARSHTRA","2024-09-23",36,10,6.7,"RAINY"),
("SANGLI","MAHARSHTRA","2024-03-23",31,20,8.9,"DRY"),
("RATNGIRI","MAHARSHTRA","2024-01-25",23,18,9.5,"COLD");

DROP TABLE WEATHER;
SELECT * FROM WEATHER;
SELECT AVG(High_Temperature) from WEATHER;

SELECT AVG(High_Temperature)
from WEATHER 
where City = "KOLHAPUR";

select MAX(High_Temperature) from WEATHER;

SELECT MIN(High_Temperature) from WEATHER;

SELECT COUNT(*) FROM WEATHER;

SELECT COUNT(CITY) FROM WEATHER WHERE CITY="SATARA" AND Precipitation>0;

SELECT  CITY, SUM(High_Temperature),avg(High_Temperature),min(High_Temperature),max(High_Temperature) FROM WEATHER GROUP BY CITY;