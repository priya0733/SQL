CREATE DATABASE IF NOT EXISTS walmart;
USE walmart;


CREATE TABLE sales(
invoice_id VARCHAR(30) NOT NULL PRIMARY KEY,
branch VARCHAR(5) NOT NULL,
city VARCHAR(30) NOT NULL,
customer_type VARCHAR(30) NOT NULL,
gender VARCHAR(10) NOT NULL,
product_line VARCHAR(100) NOT NULL,
unit_price DECIMAL(10,2) NOT NULL,
quantity INT(20) NOT NULL,
vat FLOAT(6,4) NOT NULL,
total DECIMAL(12, 4) NOT NULL,
date DATETIME NOT NULL,
time TIME NOT NULL,
payment VARCHAR(15) NOT NULL,
cogs DECIMAL(10,2) NOT NULL,
gross_margin_pct FLOAT(11,9),
gross_income DECIMAL(12, 4),
rating FLOAT(2, 1)
);


SELECT * FROM sales;

-- Feature Engineering --
-- 1. Time_of_day - Add the column
SELECT time,
(CASE 
   WHEN 'time' BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
   WHEN 'time' BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
   ELSE "Evening"
END) AS time_of_day
FROM Sales;

ALTER TABLE SALES ADD COLUMN time_of_day VARCHAR(20);
UPDATE SALES 
SET time_of_day = (CASE 
   WHEN 'time' BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
   WHEN 'time' BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
   ELSE "Evening"
END);


SELECT * FROM SALES;


-- 2.Day_name
SELECT  date,
DAYNAME(date) AS day_name
FROM sales;

ALTER TABLE SALES ADD COLUMN day_name VARCHAR(10);

UPDATE SALES 
SET day_name = DAYNAME(date);

SELECT * FROM SALES;

-- 3.Month name
SELECT date,
MONTHNAME(date) AS Month
FROM SALES;

ALTER TABLE SALES ADD COLUMN MONTH VARCHAR(20);
UPDATE SALES SET MONTH=MONTHNAME(date);

-- Exploratory Data analysis (EDA)

-- 1.How many distinct cities are present in the dataset?
SELECT DISTINCT(city) from sales;
SELECT DISTINCT(BRANCH), CITY from sales;
SELECT DISTINCT(city),BRANCH FROM SALES;

-- PRODUCT ANALYSIS
-- 1.How many distinct product lines are there in the dataset?
SELECT COUNT(DISTINCT(product_line)) FROM SALES;

-- 2.What is the most common payment method?

SELECT payment,COUNT(payment) AS common_payment_method
FROM sales GROUP BY payment ORDER BY common_payment_method DESC LIMIT 1;

-- 3.What is the most selling product line?
SELECT product_line,COUNT(product_line) AS SELLING_PRODUCT_LINE
FROM sales GROUP BY product_line ORDER BY SELLING_PRODUCT_LINE DESC  LIMIT 1;

--  4.What is the total revenue by month?
SELECT SUM(total) AS TOTAL_REVENUE,
MONTH FROM SALES GROUP BY MONTH ORDER BY TOTAL_REVENUE DESC;

SELECT MONTH, SUM(total) AS total_revenu
FROM SALES GROUP BY MONTH ORDER BY total_revenu DESC;

-- -- 5.Which month recorded the highest Cost of Goods Sold (COGS)?
SELECT MONTH ,SUM(cogs) AS total_cogs
FROM sales GROUP BY MONTH ORDER BY total_cogs DESC;

-- 7.Which city has the highest revenue?
SELECT CITY, SUM(TOTAL) AS HIGH_REVENUE FROM SALES GROUP BY CITY ORDER BY HIGH_REVENUE
DESC LIMIT 1;

-- 8.Which product line incurred the highest VAT?

-- -- 9.Which branch sold more products than average product sold?
 
 SELECT branch, SUM(quantity) AS quantity
FROM sales GROUP BY branch HAVING SUM(quantity) > AVG(quantity) ORDER BY quantity DESC LIMIT 1;

-- 11.What is the most common product line by gender?
SELECT gender, product_line, COUNT(gender) total_count
FROM sales GROUP BY gender, product_line ORDER BY total_count DESC;

-- -- 12.What is the average rating of each product line?
SELECT product_line, ROUND(AVG(rating),2) average_rating
FROM sales GROUP BY product_line ORDER BY average_rating DESC;
