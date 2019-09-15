-- use relationship_db for database
-- due to auto_increment, insert ignore won't work, there are ways
-- to make insert ignore work, but most of them involve changing the database setting
-- so it is better to copy paste them instead of running the whole file.
-- or we can just run the whole file once and then never run it again

DROP DATABASE IF EXISTS relationship_db;

CREATE DATABASE IF NOT EXISTS relationship_db;
USE relationship_db;

CREATE TABLE IF NOT EXISTS customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);


INSERT IGNORE INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
	   
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);

