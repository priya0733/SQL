create database Triger;
use triger;
create table customer(
acc_no int primary key,
cust_name varchar(45),
avail_balanace decimal);

create table mini_statement(
acc_no int,
avail_balanace decimal,
foreign key(acc_no) references customer(acc_no) on delete cascade);

insert into customer(acc_no,cust_name,avail_balanace)
values(1000,"jhon",7000),
(1001,"bob",12000);

delimiter //
create trigger update_cus before update on customer for each row
	   begin
       insert into mini_statement values (old.acc_no , old.avail_balanace);
       end; //
delimiter //
update customer set avail_balanace = avail_balanace + 3000 where acc_no = 1001;
update customer set avail_balanace = avail_balanace + 3000 where acc_no = 1000;

select * from customer;
select * from mini_statement;

-- after update trigger

create table micro_statement(
acc_no int,
avail_balanace decimal,
foreign key(acc_no) references customer(acc_no) on delete cascade);


insert into customer values (1002,"Janitor",4500);
select * from micro_statement;

       







