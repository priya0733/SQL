use test;
CREATE TABLE MOBILE_STORE(
ID INT,
Price INT,
Model VARCHAR(255),
Ram VARCHAR(255)
);

INSERT INTO MOBILE_STORE(ID,Price,Model,Ram)
VALUES (1,5000 ,"Pixel6","12GB"),
(2,100000 ,"Apple14Pro","8GB"),
(3,30000 ,"Samsungs21FE","12GB"),
(4,20000 ,"Redmi12","12GB"),
(5,50000 ,"VivoV21","12GB")
; 

select * from MOBILE_STORE;
select * from MOBILE_STORE where Model="Pixel6";
select * from MOBILE_STORE where Price between 10000 AND 20000;

drop table MOBILE_STORE;
use test;
INSERT INTO car_showroom(ID,Price,Model,Make)
VALUES (6,500000 ,"THAR","2024-03-02");
select * from car_showroom;
select * from car_showroom where Make="2020-05-02";
select * from car_showroom where ID=3;
select * from car_showroom where Price>100000;