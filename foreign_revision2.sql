create database sales;
use sales;
create table users(
user_id int primary key,
email varchar(45),
name varchar(45));

create table orders(
order_no int,
user_id INT NOT NULL REFERENCES users(user_id),
product_sku int);

create table books(
product_sku int,
title varchar(45),
price int);

INSERT INTO USERS(USER_ID,EMAIL,NAME)
VALUES(10,"sadio1@example.com","sadio"),
(11,"mo@example.com","sadio"),
(12,"rinsola@example.com","Rinsola"),
(13,"amalie@example.com","Amalie");


INSERT INTO ORDERS()
VALUES(93,11,123),
(94,11,789),
(95,13,789),
(96,10,101);

INSERT INTO BOOKS(PRODUCT_SKU,TITLE,PRICE)
VALUES(123,"Aurora",15),
(456,"Blind Lake",10),
(789,"Invisible PLanest",25),
(101,"The Sparrow",15);

