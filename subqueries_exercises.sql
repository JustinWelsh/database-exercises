USE employees;

#1
SELECT first_name FROM employees WHERE hire_date IN (
    SELECT hire_date FROM employees WHERE emp_no = '101010'
    );

#2
SELECT title FROM titles WHERE emp_no IN (
    SELECT emp_no FROM employees WHERE  first_name = 'Aamod'
    );

#3
SELECT first_name, last_name FROM employees WHERE emp_no IN (
    SELECT emp_no FROM dept_manager WHERE gender = 'F' AND to_date = '9999-01-01'
    );

#BONUS 1
SELECT dept_name FROM departments WHERE dept_no IN (
    SELECT dept_no FROM dept_manager WHERE emp_no IN (
        SELECT emp_no FROM employees WHERE gender = 'F'
        ) AND to_date = '9999-01-01'
    );

#BONUS 2
SELECT first_name, last_name FROM employees WHERE emp_no IN (
    SELECT emp_no FROM salaries WHERE salary IN (
        SELECT MAX(salary) FROM salaries
        )
    );

