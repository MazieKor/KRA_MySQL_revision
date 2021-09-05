# task 1
USE cinemas_ex;
DESC tickets;
ALTER TABLE tickets ADD priceUSD DECIMAL(8,4);

ALTER TABLE movies ADD director CHAR(80);
DESC movies;
ALTER TABLE movies MODIFY COLUMN director VARCHAR(50);

ALTER TABLE tickets DROP COLUMN priceUSD;

# task 2
DESC movies;
ALTER TABLE movies ADD watchCount MEDIUMINT UNSIGNED;
ALTER TABLE movies ADD isTop TINYINT DEFAULT(0);    #NEW sprawdzić jak tu zrobić

DESC cinemas;
ALTER TABLE cinemas ADD openTime TIME;
ALTER TABLE cinemas ADD closeTime TIME;