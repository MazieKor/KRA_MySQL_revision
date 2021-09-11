# task 1
CREATE DATABASE products_ex CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

#task 2
CREATE TABLE products(id INT UNSIGNED AUTO_INCREMENT, name VARCHAR(45) NOT NULL, description VARCHAR(500), price DECIMAL(11,2) UNSIGNED, PRIMARY KEY (id));
CREATE TABLE orders(id INT UNSIGNED AUTO_INCREMENT, description VARCHAR(500), PRIMARY KEY (id));
CREATE TABLE clients(id INT UNSIGNED AUTO_INCREMENT, name VARCHAR(40) NOT NULL, surname VARCHAR(60) NOT NULL, PRIMARY KEY (id));

DESCRIBE products;
ALTER TABLE products MODIFY COLUMN name VARCHAR(195) NOT NULL UNIQUE;
SHOW TABLE STATUS like 'orders';

#task 3
CREATE DATABASE cinemas_ex;
USE cinemas_ex;

SHOW CREATE DATABASE cinemas_ex;
SELECT @@character_set_database, @@collation_database;
SELECT @@GLOBAL.sql_mode;

#task 4
CREATE TABLE cinemas(id INT UNSIGNED AUTO_INCREMENT, name VARCHAR(45) NOT NULL, address VARCHAR(60), PRIMARY KEY (id));
CREATE TABLE movies(id INT UNSIGNED AUTO_INCREMENT, title VARCHAR(45) NOT NULL, description VARCHAR(800), rating FLOAT(4,2) UNSIGNED, PRIMARY KEY (id));
CREATE TABLE tickets(id INT UNSIGNED AUTO_INCREMENT, quantity SMALLINT NOT NULL, price DECIMAL(6,2) NOT NULL, status BOOLEAN, PRIMARY KEY (id));
CREATE TABLE payments(id INT UNSIGNED AUTO_INCREMENT, type VARCHAR(10) NOT NULL, payment_date DATE NOT NULL, PRIMARY KEY (id));