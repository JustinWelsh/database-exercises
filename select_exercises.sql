USE codeup_test_db;

-- THE COMMAND TO RUN THIS FILE === mysql -u codeup_test_user -p < select_exercises.sql;


SELECT name
    FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre
FROM albums
WHERE name = 'Nevermind';

SELECT name
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT name
FROM albums
WHERE sales < 20000000;

SELECT name
FROM albums
WHERE genre = 'Rock';

