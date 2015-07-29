USE codeup_test_db;

SELECT * FROM albums WHERE artist = 'Pink Floyd';
-- mysql> SELECT * FROM albums WHERE artist = 'Pink Floyd';
-- +----+------------+---------------------------+--------------+-------+------------------+
-- | id | artist     | album_name                | release_date | sales | genre            |
-- +----+------------+---------------------------+--------------+-------+------------------+
-- |  2 | Pink Floyd | The Dark Side of the Moon |         1973 | 22.70 | Progressive rock |
-- +----+------------+---------------------------+--------------+-------+------------------+
-- 1 row in set (0.00 sec)
