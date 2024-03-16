CREATE DATABASE employees;

USE employees;

-- preview sample data

SELECT * FROM employees
LIMIT 50;

-- rename ID column to match the standards

ALTER TABLE employees
CHANGE COLUMN ď»żid emp_id VARCHAR(20) NULL;

-- checking datatypes

DESCRIBE employees;

-- updating date formats of birthdate column then updating datatype to date

UPDATE employees
SET birthdate = CASE 
	WHEN birthdate LIKE '%/%' THEN str_to_date(birthdate, '%m/%d/%Y')
    WHEN birthdate LIKE '%-%' THEN str_to_date(birthdate, '%m-%d-%Y')
    ELSE null
END;

ALTER TABLE employees
MODIFY COLUMN birthdate DATE;

-- updating date formats of hire_date column then updating datatype to date

UPDATE employees
SET hire_date = CASE 
	WHEN hire_date LIKE '%/%' THEN str_to_date(hire_date, '%m/%d/%Y')
    WHEN hire_date LIKE '%-%' THEN str_to_date(hire_date, '%m-%d-%Y')
    ELSE null
END;

ALTER TABLE employees
MODIFY COLUMN hire_date DATE;

-- updating date format of termdate column, empty strings to nulls then updating datatype to date

UPDATE employees
SET termdate = date(str_to_date(termdate, '%Y-%m-%d %H:%i:%s UTC'))
WHERE termdate IS NOT NULL AND termdate != '';

ALTER TABLE employees
MODIFY COLUMN termdate DATE;

-- creating new column for age and calculating age from birtdate and current date

ALTER TABLE employees
ADD COLUMN age INT;

UPDATE employees
SET age = timestampdiff(YEAR, birthdate, CURDATE());

-- checking age range and removing values below 0 and below 18, which does not make sense

SELECT 
	MIN(age) AS youngest,
	MAX(age) AS oldest
FROM employees;

DELETE FROM employees
WHERE age < 18;

-- checking for duplicated employee ids and nulls in emp_id, as it should be unique and not null
    
SELECT emp_id, COUNT(*)
FROM employees
GROUP BY emp_id
HAVING COUNT(*) > 1;

SELECT * FROM employees
WHERE emp_id IS NULL;

