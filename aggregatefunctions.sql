SELECT * FROM updateexample.customers;
select * from customers limit 2;
select * from customers where Country="India";
select * from customers;

create table Products(
ProductID int,
ProductName varchar(255),
SupplierID int,
CategoryID int,
Unit varchar(255),
Price int);

insert into Products (ProductID,ProductName,SupplierID,CategoryID,Unit,Price)
values(1,"Chais",1,1,"10 boxes x 20 bags",18),
(2,"Chang",1,1,"24-12 oz bottles",19),
(3,"Anissed Syrup",1,2,"12-550ml bottles",10),
(4,"Chef Anton's Cajun Seasoning ",2,2,"48 - 6 oz jars",22),
(5,"Chef Anton's Gumbo Mix",2,2,"36 boxes",21.35);

select * from Products;
select count(ProductID) from Products;
select AVG(Price) from Products;
select SUM(Price) from Products;
select * from Products where ProductName LIKE "c%";
select * from Products where ProductName LIKE "%x";




