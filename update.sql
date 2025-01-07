create schema updateexample;
use updateexample;
create table customers(
CustomerID int,
CustomerName varchar(255),
ContactName varchar(255),
Address	varchar(255),
City varchar(255),
PostalCode	int,
Country varchar(255));

drop table customers;
select * from customers;

insert into customers(CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country)
VALUES(1,"Shriya Palkar","S.G.Palkar","Kop Salokhenagar","Kop",416519,"India"),
(2,"harsh Palkar","H.G.Palkar","Kudal nagar","Kop",416599,"India"),
(3,"Sangita Palkar","S.G.Palkar","Kasal Salokhe","Kop",416999,"India");

select * from customers;

UPDATE customers
SET City="NEW YORK", Country="USA"
Where CustomerId=2;
