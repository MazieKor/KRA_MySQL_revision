# task 1
USE products_ex;
CREATE TABLE client_address(client_id INT UNSIGNED, city VARCHAR(40) NOT NULL, street VARCHAR(55) NOT NULL, house_nr VARCHAR(4) NOT NULL, PRIMARY KEY (client_id), FOREIGN KEY(client_id) REFERENCES clients(id));
INSERT INTO clients VALUES (null, 'Tomek', 'Nowak');
INSERT INTO clients VALUES (null, 'Maciek', 'Korczak');
INSERT INTO clients VALUES (null, 'Michael', 'Jordan');
INSERT INTO clients VALUES (null, 'Andrzej', 'Wiśniewski');
INSERT INTO clients VALUES (null, 'Leo', 'Messi');

INSERT INTO client_address VALUES (2, 'Janów', 'Janowska', '11');
INSERT INTO client_address VALUES (7, 'Gliwice', 'Kaczyniec', '3');
INSERT INTO client_address VALUES (4, 'Palo ALto', 'main. str', '123');
INSERT INTO client_address VALUES (5, 'Jordanów', 'św. Jordana', '23');
INSERT INTO client_address VALUES (1, 'Lódź', 'Aleksnadryjska', '45');

# task 2
USE cinemas_ex;
DELETE FROM payments;
DESC payments;
ALTER TABLE payments MODIFY COLUMN id INT UNSIGNED, ADD FOREIGN KEY (id) REFERENCES tickets(id);
INSERT INTO payments VALUES (2, 'cash', 20210907);
INSERT INTO payments SET id = 1, type = 'transfer', payment_date = '2021-09-01';
INSERT INTO payments VALUES (5, 'card', CURTIME());
INSERT INTO payments VALUES (3, 'card', LOCALTIME);
INSERT INTO payments VALUES (7, 'cash', 20210831);
INSERT INTO payments VALUES (6, 'card', '2021-07-30');