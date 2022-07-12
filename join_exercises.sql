USE employees;

#Employees Database

#TODO: 1 write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS department, CONCAT(e.first_name, ' ', e.last_name) AS department_manager
FROM employees AS e #why did we need to set as 'e'??
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
JOIN departments AS d on d.dept_no = dm.dept_no
WHERE YEAR(dm.to_date) = 9999
ORDER BY d.dept_name;


#EXAMPLE
# +--------------------+--------------------+
# | Department Name    | Department Manager |
# +--------------------+--------------------+
# | Customer Service   | Yuchang Weedman    |
# | Development        | Leon DasSarma      |
# | Finance            | Isamu Legleitner   |
# | Human Resources    | Karsten Sigstam    |
# | Marketing          | Vishwani Minakawa  |
# | Production         | Oscar Ghazalie     |
# | Quality Management | Dung Pesch         |
# | Research           | Hilary Kambil      |
# | Sales              | Hauke Zhang        |
# +--------------------+--------------------+

#TODO: 2 Find the name of all departments currently managed by women.
SELECT d.dept_name as department, CONCAT(e.first_name, ' ', e.last_name) as department_manager
FROM employees AS e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE YEAR(dm.to_date) = 9999 AND e.gender = 'F'
ORDER BY d.dept_name;

#EXAMPLE
# +------------------+--------------------+
# | Department Name  | Department Manager |
# +------------------+--------------------+
# | Development      | Leon DasSarma      |
# | Finance          | Isamu Legleitner   |
# | Human Resources  | Karsten Sigstam    |
# | Research         | Hilary Kambil      |
# +------------------+--------------------+

#TODO: 3 Find the current titles of employees currently working in the Customer Service department.
SELECT t.title, COUNT(t.title) as Total
FROM employees AS e
         JOIN titles AS t ON e.emp_no = t.emp_no
         JOIN dept_emp AS de ON e.emp_no = de.emp_no
         JOIN departments AS d ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01' AND de.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY t.title;

#EXAMPLE
# +--------------------+-------+
# | title              | Total |
# +--------------------+-------+
# | Senior Staff       | 11268 |
# | Staff              |  3574 |
# | Senior Engineer    |  1790 |
# | Engineer           |   627 |
# | Technique Leader   |   241 |
# | Assistant Engineer |    68 |
# | Manager            |     1 |
# +--------------------+-------+

#TODO: 4 Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM departments AS d
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
         JOIN employees AS e ON dm.emp_no = e.emp_no
         JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

#EXAMPLE
# +--------------------+--------------------+--------+
# | Department Name    | Department Manager | Salary |
# +--------------------+--------------------+--------+
# | Customer Service   | Yuchang Weedman    |  58745 |
# | Development        | Leon DasSarma      |  74510 |
# | Finance            | Isamu Legleitner   |  83457 |
# | Human Resources    | Karsten Sigstam    |  65400 |
# | Marketing          | Vishwani Minakawa  | 106491 |
# | Production         | Oscar Ghazalie     |  56654 |
# | Quality Management | Dung Pesch         |  72876 |
# | Research           | Hilary Kambil      |  79393 |
# | Sales              | Hauke Zhang        | 101987 |
# +--------------------+--------------------+--------+


#BONUS - TODO: Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT(e.first_name, ' ', e.last_name), d.dept_name, CONCAT(e2.first_name, ' ', e2.last_name)
FROM employees AS e
         JOIN dept_emp AS de ON e.emp_no = de.emp_no
         JOIN departments AS d ON de.dept_no = d.dept_no
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
         JOIN employees AS e2 ON dm.emp_no = e2.emp_no
WHERE YEAR(de.to_date) = 9999 AND YEAR(dm.to_date) = 9999
ORDER BY d.dept_name, e.emp_no;


#EXAMPLE
# +----------------------+------------------+-----------------+
# | Employee             | Department       | Manager         |
# +----------------------+------------------+-----------------+
# | Huan Lortz           | Customer Service | Yuchang Weedman |
# | Basil Tramer         | Customer Service | Yuchang Weedman |
# | Breannda Billingsley | Customer Service | Yuchang Weedman |
# | Jungsoon Syrzycki    | Customer Service | Yuchang Weedman |
# | Yuichiro Swick       | Customer Service | Yuchang Weedman |
# ... 240,124 Rows in total