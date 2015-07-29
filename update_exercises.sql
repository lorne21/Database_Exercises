USE codeup_test_db;

-- All albums in table
SELECT * FROM albums;
-- +----+-------------------+-----------------------------------+--------------+-------+-----------------------------+
-- | id | artist            | album_name                        | release_date | sales | genre                       |
-- +----+-------------------+-----------------------------------+--------------+-------+-----------------------------+
-- |  1 | Michael Jackson   | Thriller                          |         1982 | 42.40 | Pop, rock, R&B              |
-- |  2 | Pink Floyd        | The Dark Side of the Moon         |         1973 | 22.70 | Progressive rock            |
-- |  3 | Whitney Houston   | The Bodyguard                     |         1992 | 27.40 | Soundtrack/R&B, soul, pop   |
-- |  4 | Meat Loaf         | Bat Out of Hell                   |         1977 | 20.60 | Hard rock, progressive rock |
-- |  5 | Eagles            | Their Greatest Hits (1971–1975)   |         1976 | 32.20 | Rock, soft rock, folk rock  |
-- |  6 | AC/DC             | Back in Black                     |         1980 | 25.90 | Hard rock                   |
-- |  7 | Bee Gees          | Saturday Night Fever              |         1977 | 19.00 | Disco                       |
-- |  8 | Fleetwood Mac     | Rumours                           |         1977 | 27.90 | Soft rock                   |
-- |  9 | Shania Twain      | Come On Over                      |         1997 | 29.60 | Country, pop                |
-- | 10 | Led Zeppelin      | Led Zeppelin IV                   |         1971 | 29.00 | Hard rock, heavy metal      |
-- | 11 | Alanis Morissette | Jagged Little Pill                |         1995 | 24.80 | Alternative rock            |
-- | 12 | Celine Dion       | Falling into You                  |         1996 | 20.20 | Pop / Soft rock             |
-- +----+-------------------+-----------------------------------+--------------+-------+-----------------------------+
-- 12 rows in set (0.00 sec)

-- Multiply all sales by 10
UPDATE albums
SET sales = sales * 10;

SELECT * FROM albums; 

-- +----+-------------------+-----------------------------------+--------------+--------+-----------------------------+
-- | id | artist            | album_name                        | release_date | sales  | genre                       |
-- +----+-------------------+-----------------------------------+--------------+--------+-----------------------------+
-- |  1 | Michael Jackson   | Thriller                          |         1982 | 424.00 | Pop, rock, R&B              |
-- |  2 | Pink Floyd        | The Dark Side of the Moon         |         1973 | 227.00 | Progressive rock            |
-- |  3 | Whitney Houston   | The Bodyguard                     |         1992 | 274.00 | Soundtrack/R&B, soul, pop   |
-- |  4 | Meat Loaf         | Bat Out of Hell                   |         1977 | 206.00 | Hard rock, progressive rock |
-- |  5 | Eagles            | Their Greatest Hits (1971–1975)   |         1976 | 322.00 | Rock, soft rock, folk rock  |
-- |  6 | AC/DC             | Back in Black                     |         1980 | 259.00 | Hard rock                   |
-- |  7 | Bee Gees          | Saturday Night Fever              |         1977 | 190.00 | Disco                       |
-- |  8 | Fleetwood Mac     | Rumours                           |         1977 | 279.00 | Soft rock                   |
-- |  9 | Shania Twain      | Come On Over                      |         1997 | 296.00 | Country, pop                |
-- | 10 | Led Zeppelin      | Led Zeppelin IV                   |         1971 | 290.00 | Hard rock, heavy metal      |
-- | 11 | Alanis Morissette | Jagged Little Pill                |         1995 | 248.00 | Alternative rock            |
-- | 12 | Celine Dion       | Falling into You                  |         1996 | 202.00 | Pop / Soft rock             |
-- +----+-------------------+-----------------------------------+--------------+--------+-----------------------------+
-- 12 rows in set (0.00 sec)


-- all albums before 1980

SELECT * FROM albums WHERE release_date < 1980;
-- +----+---------------+-----------------------------------+--------------+-------+-----------------------------+
-- | id | artist        | album_name                        | release_date | sales | genre                       |
-- +----+---------------+-----------------------------------+--------------+-------+-----------------------------+
-- |  2 | Pink Floyd    | The Dark Side of the Moon         |         1973 | 22.70 | Progressive rock            |
-- |  4 | Meat Loaf     | Bat Out of Hell                   |         1977 | 20.60 | Hard rock, progressive rock |
-- |  5 | Eagles        | Their Greatest Hits (1971–1975)   |         1976 | 32.20 | Rock, soft rock, folk rock  |
-- |  7 | Bee Gees      | Saturday Night Fever              |         1977 | 19.00 | Disco                       |
-- |  8 | Fleetwood Mac | Rumours                           |         1977 | 27.90 | Soft rock                   |
-- | 10 | Led Zeppelin  | Led Zeppelin IV                   |         1971 | 29.00 | Hard rock, heavy metal      |
-- +----+---------------+-----------------------------------+--------------+-------+-----------------------------+
-- 6 rows in set (0.00 sec)

-- make all albums from 1800s

UPDATE albums
SET release_date = release_date + 100
WHERE release_date < 1980;

SELECT * FROM albums WHERE release_date > 2000;

-- +----+---------------+-----------------------------------+--------------+--------+-----------------------------+
-- | id | artist        | album_name                        | release_date | sales  | genre                       |
-- +----+---------------+-----------------------------------+--------------+--------+-----------------------------+
-- |  2 | Pink Floyd    | The Dark Side of the Moon         |         2073 | 227.00 | Progressive rock            |
-- |  4 | Meat Loaf     | Bat Out of Hell                   |         2077 | 206.00 | Hard rock, progressive rock |
-- |  5 | Eagles        | Their Greatest Hits (1971–1975)   |         2076 | 322.00 | Rock, soft rock, folk rock  |
-- |  7 | Bee Gees      | Saturday Night Fever              |         2077 | 190.00 | Disco                       |
-- |  8 | Fleetwood Mac | Rumours                           |         2077 | 279.00 | Soft rock                   |
-- | 10 | Led Zeppelin  | Led Zeppelin IV                   |         2071 | 290.00 | Hard rock, heavy metal      |
-- +----+---------------+-----------------------------------+--------------+--------+-----------------------------+
-- 6 rows in set (0.00 sec)


SELECT * FROM albums WHERE artist = 'Michael Jackson';
-- +----+-----------------+------------+--------------+-------+----------------+
-- | id | artist          | album_name | release_date | sales | genre          |
-- +----+-----------------+------------+--------------+-------+----------------+
-- |  1 | Michael Jackson | Thriller   |         1982 | 42.40 | Pop, rock, R&B |
-- +----+-----------------+------------+--------------+-------+----------------+
-- 1 row in set (0.00 sec)

-- update Michael to Peter
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT * FROM albums WHERE artist = 'Peter Jackson';
