-- in all the example we use tanim as a database name.
-- in all the example we use client as a table name in database.
mysql -u username -p


-- To create a database.
CREATE DATABASE tanim;

-- To delete a database.
DROP DATABASE tanim;

-- To use a database.
USE tanim;

-- To check which database you are currently using.
SELECT DATABASE();

-- Viewing All Tables in the Database.
SHOW TABLES;

-- Viewing Table Structure:
DESCRIBE users;

-- To use the specific table in database:
USE table_name;

-- How create table with some data in the database?
CREATE TABLE client(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR (100) NOT NULL,
    email VARCHAR (50) NOT NULL UNIQUE,
    phone INT (12) UNIQUE,
    address VARCHAR (255) DEFAULT something,
    creared_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- How to inserting value in the table?
INSERT INTO client (name, email, phone, address)
VALUES ('Tanim', 'tanim@gmail.com', '1234567890', 'Dhaka');

-- How to select all the data from the table?
SELECT * FROM client;

-- How to select specific columns?
SELECT name, email FROM client;

-- How to filter results with a condition?
SELECT * FROM client WHERE phone ='1234567890';

-- How to Deleting Data from a Table?
DELETE FROM client WHERE id = 1;

-- How to Drop Table in Database?
DROP TABLE client;

-- Adding a Column to a Table:
ALTER TABLE clients
ADD COLUMN age INT;

-- To drop a column:
ALTER TABLE users
DROP COLUMN last_login;

-- Modifying an Existing Column:
ALTER TABLE clients
MODIFY COLUMN phone VARCHAR(15);

-- Creating an Index:
CREATE INDEX idx_email ON clients(email);

-- Switching Between Databases:
USE another_database_name;

-- Updating Data in a Table:
UPDATE users
SET email = 'john_doe_new@example.com'
WHERE username = 'john_doe';

-- Altering a Table Structure:
Altering a Table Structure:

-- Joining Two Tables:
SELECT orders.order_id, clients.name, orders.total_amount
FROM orders
INNER JOIN clients ON orders.client_id = clients.id;

-- Querying Data Across Multiple Tables (Joins):
SELECT users.username, products.name, orders.quantity, orders.order_date
FROM orders
JOIN users ON orders.user_id = users.id
JOIN products ON orders.product_id = products.id;

-- Query Data from Multiple Tables:
SELECT users.username, products.name, orders.quantity, orders.order_date
FROM orders
JOIN users ON orders.user_id = users.id
JOIN products ON orders.product_id = products.id
WHERE users.username = 'alice';
