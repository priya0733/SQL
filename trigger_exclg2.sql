create schema Trig2;
use trig2;

create table customer(
acc_no int primary key,
cust_name varchar(45),
avail_balanace decimal);

insert into customer values
(1000,"jhon",7000),
(1001,"bob",12000);

select * from customer;

create table micro_statement(
acc_no int,
avail_balance decimal,
foreign key(acc_no) references customer(acc_no) on delete cascade);

insert into customer values (1002,"Janitor",4500);

delimiter //
create trigger update_after
        after update on customer
        for each row
        begin
        insert into micro_statement
        values(new.acc_no,new.avail_balanace);
        end; //

update customer set
avail_balanace=avail_balanace + 1500 where acc_no =1002;

select * from micro_statement;