USE SUPER_MARKET;
CREATE TABLE Stock(
id INT,
City VARCHAR(255),
Pin INT);

INSERT INTO Stock(id,City,Pin) VALUES(1,"KOP",416519),
(2,"Kudal",416519),
(3,"KOP",416519);

SELECT * FROM  Stock;

-- Inner Join
SELECT p.ID,p.name,p.category,st.City
FROM products p
JOIN Stock st ON p.id=st.id;

-- inner
SELECT st.City,p.name,p.category
FROM products p
INNER JOIN Stock st ON p.id=st.id;

SELECT st.City,p.name
FROM products p
LEFT JOIN Stock st
  ON st.id=p.id;

-- right join
SELECT products.name,Stock.City
FROM products
RIGHT JOIN Stock
ON Stock.id = products.id;

SELECT Student.Name,Student_Course.COURSE_ID FROM
Student 
FULL JOIN Student_Course
ON Student_Course.ROLL_NO = Student.ROLL_NO;

SELECT category,price,City,Pin
FROM products
FULL JOIN Stock
ON Stock.id = products.id;

  