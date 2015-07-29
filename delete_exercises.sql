USE codeup_test_db;

-- albums after 1991 but before 2000
DELETE FROM albums WHERE release_date BETWEEN 1991 AND 2000; 

-- albums with genre disco
DELETE FROM albums WHERE genre = 'disco';

-- albums by whitney houston
DELETE FROM albums WHERE artist = 'Whitney Houston';

-- display resulting table
SELECT * FROM albums; 