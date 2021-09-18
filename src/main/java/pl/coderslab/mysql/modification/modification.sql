# task 3  - correction of queries from Main03.java
USE products_ex;
INSERT INTO products SET id=0, name='produkt1', description=name, price=904;
INSERT INTO clients VALUES(0, 'Jan', 'Kowalski');

use cinemas_ex;
DESC movies;
INSERT INTO movies(id, rating, title) VALUES(null, 5.3, 'Szybcy i wściekli');
DESC payments;
INSERT INTO payments SET id=90, type = 'cash', payment_date = NOW();
INSERT INTO payments SET id=null, type = 'cash', payment_date = NOW();     # testing of AUTO_INCREMENT
INSERT INTO payments SET id=190, type = 'cash', payment_date = NOW();
INSERT INTO payments SET id=null, type = 'cash', payment_date = NOW();
INSERT INTO payments SET id=1, type = 'cash', payment_date = NOW();
INSERT INTO payments SET id=0, type = 'cash', payment_date = NOW();
DELETE FROM payments;
INSERT INTO payments SET id=0, type = 'cash', payment_date = NOW();         # test id after DELETE all lines
DROP TABLE payments;                                                        # I drop and recreate payments



# task 4
DESC cinemas;
INSERT INTO cinemas VALUES (null, 'sun cinema', 'Warsaw', '10:00', '23:05:00');
INSERT INTO cinemas VALUES (null, 'best cinema', 'Gliwice', '9:00', '21:05');
INSERT INTO cinemas VALUES (null, 'X', 'Wroclaw', '08:00', '19:00:00');
INSERT INTO cinemas VALUES (null, 'planet cinema', 'Bialystok', '11:30', '23:00');
INSERT INTO cinemas VALUES (null, 'factor cinema', 'Gdansk', '07:00', '22:35:45');

DESC movies;
INSERT INTO movies VALUES (null, 'Terminator', 'classic s-f', 8.12, 'Cameron', 68, 1);
INSERT INTO movies VALUES (null, 'Alien', 'scary horror', 7.4, null, 23, null);
INSERT INTO movies (title, rating, watchCount) VALUES ('Listy do M', 2.12, 4);
INSERT INTO movies (title, description, director, rating, watchCount) VALUES ('X-Men', 'superhero', 'Singer', 5.12, 49);
INSERT INTO movies SET title = 'Avatar', rating = 4.9, director = 'Cameron', watchCount = 112, isTop = 1;
INSERT INTO movies VALUES (null, 'La La Land', 'music movie', 3.1, 'John Lee', 54, 0);
INSERT INTO movies SET title = 'Ziemia obiecana', rating = 6.9, director = 'Wajda', watchCount = 189;
INSERT INTO movies SET title = 'Midnight in Paris', watchCount = 219, director = 'Allen', isTop = 1, rating = 5.75;

DESC payments;
INSERT INTO payments VALUES (null, 'cash', NOW());
INSERT INTO payments VALUES (null, 'transfer', '2021-09-02');
INSERT INTO payments VALUES (null, 'card', '2021-07-29');
INSERT INTO payments VALUES (null, 'cash', '2021-07-13');
INSERT INTO payments VALUES (null, 'transfer', '2021-08-02');
INSERT INTO payments VALUES (null, 'card', '2021-09-03');
INSERT INTO payments VALUES (null, 'transfer', '2020-02-29');
INSERT INTO payments VALUES (null, 'transfer', '2020-12-29');
DELETE FROM payments WHERE id = 7;
INSERT INTO payments VALUES (7, 'transfer', '2020:12:29');

DESC tickets;
INSERT INTO tickets SET quantity = 3, price = 92.99, status = 1;
INSERT INTO tickets SET id = null, quantity = 1, price = 32.99;
INSERT INTO tickets SET quantity = 14, price = 328, status = 0;
INSERT INTO tickets SET quantity = 2, price = 60, status = 1;
INSERT INTO tickets SET id = null, quantity = 1, price = 25, status = 2;
INSERT INTO tickets SET quantity = 3, price = 100, status = 1;
INSERT INTO tickets SET quantity = 5, price = 149, status = 0;



# task 5
SELECT * FROM movies WHERE title like 'W%';
SELECT * FROM movies WHERE title like 'Z%';
SELECT * FROM tickets WHERE price > 15.30;
SELECT * FROM tickets WHERE price > 50;
SELECT * FROM tickets WHERE quantity > 3;
SELECT title, rating FROM movies WHERE rating > 6.5;
SELECT title, rating FROM movies ORDER BY rating DESC LIMIT 1;
# SELECT title, MAX(rating) FROM movies;                      #TEST: can't be done like that



# task 6
SELECT SUM(quantity) AS Tickets FROM tickets;
SELECT type, COUNT(type) AS Payment_type FROM payments GROUP BY type;
SELECT AVG(price) AS 'Avarage ticket price' FROM tickets;
SELECT ROUND(AVG(price),2) AS 'Avarage ticket price' FROM tickets;
SELECT (SELECT SUM(price) FROM tickets) / (SELECT COUNT(*) FROM tickets) AS AVERAGE;
SELECT * FROM payments ORDER BY payment_date DESC LIMIT 1, 5;
SELECT * FROM payments GROUP BY type HAVING COUNT(type) > 1;
SELECT SUM(quantity) FROM tickets WHERE price > 23.15;
SELECT SUM(quantity) FROM tickets WHERE price > 60;



# task 7
UPDATE tickets SET quantity = 10;
DELETE FROM payments WHERE payment_date < '2019-01-01';
DELETE FROM payments WHERE payment_date < '2021-01-01';

# task 8
INSERT INTO cinemas VALUES (null, 'cinema xyz', 'Szczecin', null, null);
INSERT INTO cinemas VALUES (null, 'cinemaz', 'Ełk', '11:00', '19:45');
INSERT INTO cinemas VALUES (null, 'Bajka', 'Gliwice', '09:00', '19:59');
INSERT INTO cinemas VALUES (null, 'cinema ZzZ ', 'Zakopane', '11:00', '20:59');

UPDATE cinemas SET address = 'Stadion Narodowy' WHERE name LIKE '%z';
UPDATE cinemas SET address = 'Stadion Narodowy' WHERE TRIM(name) LIKE '%z';
UPDATE cinemas SET address = 'Rynek Główny' WHERE TRIM(name) LIKE '%x' collate utf8mb4_0900_bin;          # testing working with binary and case_sensitive collations
UPDATE cinemas SET name = 'BAJKA' WHERE name = 'bajka';
UPDATE cinemas SET address = 'Rynek Główny Gliwice' WHERE TRIM(name) LIKE '%A' collate utf8mb4_0900_as_cs;

DELETE FROM payments WHERE SUBDATE(NOW(),5) > payment_date;                                               # in accordance with task content I have to also time with seconds take into account
DELETE FROM payments WHERE DATEDIFF(NOW(),payment_date) > 5;                                              # here it takes into account only date part, so 3.09.21 (query executed on 8.09.21) is also retained in the result (in SUBDATE this row/ date was deleted)
# some tests fo time format:
SELECT TIME(payment_date) FROM payments;
SELECT ADDDATE(LOCALTIME(),1);
SELECT MAKETIME(839, 11, 22);
SELECT STR_TO_DATE(20211231, '%Y%m%d');
SELECT TIMESTAMP(NOW());
SELECT @@session.time_zone;

UPDATE movies SET rating = 5.4 WHERE CHAR_LENGTH(description) > 40;
UPDATE movies SET rating = 5.4 WHERE CHAR_LENGTH(description) > 11;

UPDATE tickets SET quantity = 12, status = 0 WHERE status IS NULL;
UPDATE tickets SET price = price * 0.5 WHERE quantity > 10;

SELECT ROUND(rating,2)from movies;
SELECT FORMAT(price, 1, 'pl_PL') FROM tickets;