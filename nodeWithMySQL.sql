DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

CREATE TABLE products (
item_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(50),
department_name VARCHAR(50),
price INTEGER(10),
stock_quantity VARCHAR(10)
)