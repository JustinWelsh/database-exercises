USE employees;
#==================================== COPY of order_by_exercises.sql ====================================
# Updates
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name ASC;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name ASC, last_name ASC;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name ASC, first_name ASC;


SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER By emp_no ASC;
# Reversed
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER By emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE '%q%';

# PART 2
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%e'; #start or ends with 'e'
SELECT * FROM employees WHERE last_name LIKE 'E%e'; #start & ends with 'e'
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
#=========================================================================================================
#2
SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%e'; #start & ends with 'e'

#3 Find all employees born on Christmas — 842 rows.
SELECT first_name, last_name, birth_date FROM employees WHERE
    month(birth_date) = 12 AND
    day(birth_date) = 25;

#4 Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT first_name, last_name, hire_date, birth_date FROM employees WHERE
    month(birth_date) = 12 AND
    day(birth_date) = 25 AND
    year(hire_date) BETWEEN 1990 AND 1999;

#5 employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last.
SELECT first_name, last_name, hire_date, birth_date FROM employees WHERE
    month(birth_date) = 12 AND
    day(birth_date) = 25 AND
    year(hire_date) BETWEEN 1990 AND 1999
    ORDER BY birth_date ASC, hire_date DESC;

#6 use datediff() to find how many days they have been working at the company
SELECT first_name, last_name, hire_date, birth_date, datediff(NOW(), hire_date) FROM employees WHERE
    month(birth_date) = 12 AND
    day(birth_date) = 25 AND
    year(hire_date) BETWEEN 1990 AND 1999
ORDER BY hire_date ASC;

