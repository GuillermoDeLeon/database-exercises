USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(25),
    name VARCHAR(25),
    release_date DATE,
    sales DECIMAL(6, 2),
    genre VARCHAR(25),
    PRIMARY KEY (id)
);