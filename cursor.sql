
use external_practical;

DELIMITER //

CREATE PROCEDURE process_employees()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE emp_name VARCHAR(50);
    DECLARE emp_salary DECIMAL(10, 2);

    -- Declare cursor to select employee name and salary
    DECLARE emp_cursor CURSOR FOR 
        SELECT name, salary FROM employees;

    -- Declare handler for when the cursor reaches the end
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Open the cursor
    OPEN emp_cursor;

    -- Loop through each row in the result set
    read_loop: LOOP
        FETCH emp_cursor INTO emp_name, emp_salary;

        -- If there are no more rows, exit the loop
        IF done THEN
            LEAVE read_loop;
        END IF;

        -- Process the row (In this case, we'll just display the name and salary)
        SELECT emp_name, emp_salary;
    END LOOP;

    -- Close the cursor after looping
    CLOSE emp_cursor;
END //

DELIMITER ;
