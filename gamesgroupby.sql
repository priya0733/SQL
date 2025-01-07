CREATE SCHEMA TEST2;
CREATE TABLE cats(
id int,
name varchar(50),
breed varchar(50),
colouration varchar(50),
age int,
gender varchar(50),
fav_toy varchar(50));

insert into cats(id,name,breed,colouration,age,gender,fav_toy)
values (1,"Snoofy","persian","white",1,"female","Ball"),
(2,"Snow","americian","orange",2,"Male","SOFT TOY"),
(3,"Bobby","korat","multicolour",1,"Male","SOFT TOY"),
(4,"Minne","turkish","black",4,"female","Ball"),
(5,"Chowmein","persian","white",1,"female","SOFT TOY");

select * from cats;
select name,breed,colouration from cats where age<5;
select name,id,age,gender from cats where breed="persian";
select name from cats where fav_toy="ball";

create table games(
id int,
title varchar(50),
company varchar(50),
type varchar(50),
ratting int);

insert into games(id,title,company,type,ratting)
values(1,"Cricket","BCCI","Outdoor",4),
(2,"Football","FIFA","Outdoor",3),
(3,"CHESS","ICF","Indoor",4),
(4,"Volleyball","NBA","Outdoor",3),
(5,"Golf","IGF","Outdoor",2);

select * from games;
select * from games order by ratting;
select title from games;
select type,company from games where ratting>3;





