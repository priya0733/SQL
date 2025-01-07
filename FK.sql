create schema pract;
create table stud(
id int AUTO_INCREMENT,
name varchar(20) not null,
city varchar(20) not null,
pin int,
primary key(id));

create table Info(
id int,
studid int,
studinfo varchar(20) not null,
Type varchar(20) not null,
Index par_id(studid),
constraint fk_id foreign key (studid) references stud(id));

select * from stud;
select * from Info;

show index from info;

