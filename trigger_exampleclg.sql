create database triggerexample;
use triggerexample;

show tables;

-- before insert trigger
create table customer(
cust_id int, 
age int,
name varchar(30));

delimiter // 
create trigger age_verify
before insert on customer
for each row
if new.age<0 then set new.age=0;
end if; //

insert into customer
values(101,27,"James"),
(102,-40,"Ammey"),
(103,-30,"Ben"),
(104,-39,"Angela");

select * from customer;

-- after insert trigger 
create table customer1(
id int auto_increment primary key,
name varchar(35) not null,
email varchar(30),
birthdate date);

create table message(
id int auto_increment,
messageid int,
message varchar(300) not null,
primary key(id,messageid));

insert into customer1(name,email,birthdate)
values("Nancy","nancy@abc.com",NULL),
("Ronald","ronald@xyz.com","1998-11-16"),
("Chris","chris@xyz.com","1997-08-20"),
("Alice","alice@anc.com",NULL);

select * from customer1;

delimiter //
create trigger check_null_dob 
after insert on customer1
for each row 
begin if new.birthdate is null then  
insert into message(messageid,message)
values(new.id,concat("hi",new.name,",please update your dob "));
end if; 
end //

select * from message;




