-- counting gender
SELECT COUNT(gender)
FROM employees
WHERE first_name IN ('Irena', 'Maya', 'Vidya')
GROUP BY gender;

-- concating full name with e
SELECT CONCAT (first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT CONCAT (first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%e'
ORDER BY emp_no DESC;

-- finding days worked at job
SELECT CONCAT (first_name, ' ', last_name) AS full_name, DATEDIFF(curdate(), hire_date) AS days_worked 
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY date_worked; 

-- finding unique full names
SELECT CONCAT (first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY first_name; 

-- unique full names with duplicates labeled
SELECT CONCAT (first_name, ' ', last_name) AS full_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY full_name
ORDER BY full_name;