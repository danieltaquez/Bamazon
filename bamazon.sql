DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;
USE bamazon_db;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(30) NOT NULL,
  department_name VARCHAR(30) NOT NULL,
  item_price INTEGER(10) DEFAULT 0,
  StockQuantity INT DEFAULT 0,
  PRIMARY KEY(id)
);

INSERT INTO product (productName, departmentName, itemPrice,stockQuantity)
VALUES ('Brooks Launch 2', 'Running Shoes', 99, 12);

INSERT INTO product (productName, departmentName, itemPrice,stockQuantity)
VALUES ('Brooks Launch 2', 'Running Shoes', 99, 12);

INSERT INTO product (productName, departmentName, itemPrice,stockQuantity)
VALUES ("phone3", "google", "denver", 600, TRUE);

INSERT INTO product (productName, departmentName, itemPrice,stockQuantity)
VALUES ("phone4", "blackberry", "denver", 190, TRUE);

INSERT INTO product (productName, departmentName, itemPrice,stockQuantity)
VALUES ("phone5", "motorolla", "denver", 250, TRUE);

INSERT INTO product (productName, departmentName, itemPrice,stockQuantity)
VALUES ("phone6", "lg", "denver", 150, TRUE);

INSERT INTO product (productName, departmentName, itemPrice,stockQuantity)
VALUES ("phone7", "sony", "denver", 300, TRUE);

INSERT INTO product (productName, departmentName, itemPrice,stockQuantity)
VALUES ("phone8", "htc", "denver", 230, TRUE);

INSERT INTO product (productName, departmentName, itemPrice,stockQuantity)
VALUES ("phone9", "oneplus", "denver", 790, TRUE);

INSERT INTO product (productName, departmentName, itemPrice,stockQuantity)
VALUES ("phonex", "nokia", "denver", 50, TRUE);
