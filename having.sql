create schema Having_Eg;

use Having_Eg;

create table Customers (
 CustomerID INT,
 Name varchar(255),
 Address varchar(255),
 city varchar(255),
 pin varchar(255),
 country varchar(255)
);


insert into Customers (CustomerID, Name, Address, city, pin, country) values 
(1, 'Gaurav', 'Kop', 'kop', '416008', 'India'),
(2, 'Ajinkya', 'Bhogavati', 'kop', '416010', 'India'),
(3, 'Manu', 'Satara', 'Satara', '416012', 'USA'),
(4, 'Shriya', 'Kudal', 'Kokan', '409873', 'Canada'),
(5, 'Shravani', 'Kudal', 'Kokan', '419006', 'Aus');

select * from Customers;