USE employees;

#2 use DISTINCT to find the unique titles in the titles
SELECT DISTINCT title FROM titles;

#3 Update the query to find just the unique last names that start and end with 'E' using GROUP BY.
SELECT last_name FROM employees WHERE last_name LIKE 'E%e'
GROUP BY last_name
ORDER BY last_name ASC;

#4 Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'.
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%e'
GROUP BY first_name, last_name
ORDER BY last_name ASC;

#5 Find the unique last names with a 'q' but not 'qu'.
SELECT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

#6 Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT count(last_name), last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name ORDER BY last_name;

#7 Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.
SELECT count(gender), gender FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;




