USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    album_name VARCHAR(50) NOT NULL,
    release_date DATE NOT NULL, 
    sales FLOAT DEFAULT NULL,
    genre VARCHAR(50) DEFAULT NULL,
    PRIMARY KEY (id)
);