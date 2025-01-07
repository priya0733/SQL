CREATE DATABASE User_defined_Scalar_Functions;
USE User_defined_Scalar_Functions;

-- most important 

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

SELECT * FROM WEATHER;

-- mentioned values of tempreture in database are in   Fahrenheit
 -- create a scalar function to convert the temperature from create a scalar function to convert the temperature from Fahrenheit to Celsius using User Defined SQL Scalar Function.
 
 CREATE FUNCTION  FahrenheitToCelcius(@Fahrenheit float)
 RETURN FLOAT
 BEGING 
   RETURN (@Fahrenheit - 32)* 5/9
END   

SELECT City,Weather_Date,FahrenheitToCelcius()
FROM Weather;

  

