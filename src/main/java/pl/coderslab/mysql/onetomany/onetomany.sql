# task 1
USE products_ex;
CREATE TABLE opinions(id INT UNSIGNED AUTO_INCREMENT, description VARCHAR (6000) NOT NULL,
                    products_id INT UNSIGNED NOT NULL, PRIMARY KEY(id),
                    FOREIGN KEY(products_id) REFERENCES products(id) ON DELETE CASCADE);

INSERT INTO products VALUES(null, 'ball', 'high quality', 99.999),
                            (null, 't-shirt', 'irish team shirt', 128),
                            (null, 'shorts', 'very good', 59);
INSERT INTO products(name, price) VALUES ('summer jacket', 229), ('jeans', 155), ('leather jacket', 349);

INSERT INTO opinions(description, products_id) VALUES ('great ball. Recommended', 1),
                    ('ball has not such a grat quality as it was advertised. Be carefull', 1),
                    ('With this ball I scored 34 goals!', 1),
                    ('I saw Leo Messi played this ball', 1);

INSERT INTO opinions(description, products_id) VALUES ('T-Shirt is beautiful', 2),
                  ('I gave t-shirt to my girlfriend, she was delighted', 2),
                  ('nice T-shirt but unfortunatelly very poor quality', 2),
                  ('t-shirt doesnt look likeon photo', 2);

INSERT INTO opinions(description, products_id) VALUES ('leather jacket is so beautiful', 6),
                  ('shorts are so great in summer', 3),
                  ('jeans has grat color', 5),
                  ('shipping of shorts took too much time. Be careful', 3);

SELECT DISTINCT description FROM 'opinions';