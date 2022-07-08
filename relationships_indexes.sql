#1 todo USE your employees database.
USE employees;

#2 todo DESCRIBE each table and inspect the keys and see which columns have indexes and keys.
DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;


#3 todo USE your codeup_test_db database.
USE codeup_test_db;

#4 todo Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.
DESCRIBE albums;

ALTER TABLE albums
ADD UNIQUE (name);

# INSERT INTO albums ()
