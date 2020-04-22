USE codeup_test_db

SELECT * FROM albums;
UPDATE albums SET sales = sales * 10;
select * from albums;
select * from albums WHERE release_year < 1980;

UPDATE albums SET release_year = release_year - 100 WHERE release_year < 1980;
select * from albums WHERE release_year < 1980;
select * from albums where artist = 'Michael Jackson';

UPDATE albums SET artist = 'Peter Jackson' where artist = 'Michael Jackson';
select * from albums where artist = 'Michael Jackson';