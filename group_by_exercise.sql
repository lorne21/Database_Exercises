SELECT DISTINCT title
from title
GROUP BY title;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%e'
GROUP BY last_name;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%e';

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';