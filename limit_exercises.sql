USE employees;
SELECT DISTINCT title FROM titles;
# Senior Engineer
# Staff
# Engineer
# Senior Staff
# Assistant Engineer
# Technique Leader
# Manager

SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC
LIMIT 10;

# 3
SELECT emp_no FROM salaries ORDER BY salary DESC
LIMIT 5;

#4 UPDATED
SELECT emp_no FROM salaries ORDER BY salary DESC
LIMIT 4 OFFSET 46; #Why doesnt "LIMIT 4 OFFSET 40" work to get the 'tenth' page?