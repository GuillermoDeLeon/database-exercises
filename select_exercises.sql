USE codeup_test_db

SELECT name AS 'Albums by Pink Floyd'
FROM albums WHERE artist = 'Pink Floyd';

SELECT release_year AS 'Sgt. Pepper''s Lonely Hearts Club Band Release Year'
FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'Genre for Nevermind'
 FROM albums WHERE name = 'nevermind';

SELECT Name, Artist, release_year AS 'Release Year'
FROM albums where release_year BETWEEN 1990 AND 1999;

SELECT name AS 'Albums with less than 20 million certified sales'
FROM albums WHERE sales < 20;

SELECT name AS 'Rock Albums'
FROM albums WHERE genre = 'Rock';