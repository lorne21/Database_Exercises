SELECT first_name, last_name
FROM employees
WHERE first_name ='Irena'
AND gender = 'M'
OR first_name = 'Vidya'
AND gender = 'M'
OR first_name = 'Maya'
AND gender = 'M'
ORDER BY first_name, last_name;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT first_name, last_name 
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY hire_date DESC, birth_date DESC;

SELECT first_name
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'; 