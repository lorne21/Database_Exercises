USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    album_name VARCHAR(100) NOT NULL,
    release_date YEAR(4) NOT NULL, 
    sales DECIMAL(10,2) NULL,
    genre VARCHAR(100) DEFAULT NULL,
    PRIMARY KEY (id)
);