create schema Foreign_key;
use Foreign_key;
-- create parent table
create table Customer(
ID int NOT NULL auto_increment,
Name VARCHAR(50) not null,
City varchar(50) not null,
primary key(ID));

-- create child table
create table contact(
ID int,
Customer_Id int,
Customer_Info varchar(50) not null,
Type varchar(50) not null,
Index par_id (Customer_id),
constraint fk_customer foreign key (Customer_Id)
references customer(ID));

select * from contact;
select * from Customer;

show tables;
describe customer;
describe contact;

-- PRI in the key column of the customer table tells that this field is the primary index value. Next, the MUL in the key column of the contact value tells that the Customer_Id field can store multiple rows with the same value.

