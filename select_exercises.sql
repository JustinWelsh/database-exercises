USE codeup_test_db;

--         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--         artist VARCHAR(50),
--         name VARCHAR(100) NOT NULL,
--         release_date INT UNSIGNED NOT NULL,
--         sales FLOAT UNSIGNED NOT NULL,
--         genre VARCHAR(50),
--         PRIMARY KEY (id)

SELECT name
    FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date
FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

-- SELECT genre
-- FROM albums
-- WHERE name = 'Nevermind';

-- SELECT name
-- FROM albums
-- WHERE release_date BETWEEN 1989 AND 2000;

-- SELECT name
-- FROM albums
-- WHERE sales < 20000000;

SELECT name
FROM albums
WHERE genre = 'Rock';
