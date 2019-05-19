DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
item_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(50),
department_name VARCHAR(50),
price INTEGER(10),
stock_quantity VARCHAR(10)
);


-- Populate this database with around 10 different products. (i.e. Insert "mock" data rows into this database and table).

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("iPhone Case","Accessories",49.99,27),
    ("iPhone","Electronics",499.98,27),
    ("Comforter Set","Home",129.00,6),
    ("Bathroom Rug","Home",12.00,8),
    ("Colorful Pen Set","Office",7.49,11),
    ("Samsung Note","Electronics",627.39,22),
    ("Calendar","Office",22.81,18),
    ("iPhone Case","Electronics",49.99,27),
    ("Computer Case","Accessories",10.01,13),
    ("iPhone Case","Electronics",49.99,27)
)


-- Once the customer has placed the order, your application should check if your store has enough of the product to meet the customer's request.

-- If not, the app should log a phrase like Insufficient quantity!, and then prevent the order from going through.



-- However, if your store does have enough of the product, you should fulfill the customer's order.

-- This means updating the SQL database to reflect the remaining quantity.
-- Once the update goes through, show the customer the total cost of their purchase.