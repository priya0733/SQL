select * from products;
-- The MySQL HAVING Clause

SELECT COUNT(id),(category) from products group by category
having count(id)<2;