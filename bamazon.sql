DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;
USE bamazon_db;

CREATE TABLE product (
  item_id VARCHAR(30) NOT NULL,
  product_name VARCHAR(30),
  department_name VARCHAR(30),
  item_price INTEGER(10),
  stock_q BOOLEAN NOT NULL
);

INSERT INTO product (item_id, product_name, department_name, item_price,stock_q)
VALUES ("phone", "iphone", "denver", 1000, TRUE);

INSERT INTO product (item_id, product_name, department_name, item_price,stock_q)
VALUES ("phone2", "samsung", "denver", 800, TRUE);

INSERT INTO product (item_id, product_name, department_name, item_price,stock_q)
VALUES ("phone3", "Google", "denver", 600, TRUE);

INSERT INTO product (item_id, product_name, department_name, item_price,stock_q)
VALUES ("phone4", "Blackberry", "denver", 190, TRUE);

INSERT INTO product (item_id, product_name, department_name, item_price,stock_q)
VALUES ("phone5", "motorolla", "denver", 250, TRUE);

INSERT INTO product (item_id, product_name, department_name, item_price,stock_q)
VALUES ("phone6", "lg", "denver", 150, TRUE);

INSERT INTO product (item_id, product_name, department_name, item_price,stock_q)
VALUES ("phone7", "sony", "denver", 300, TRUE);

INSERT INTO product (item_id, product_name, department_name, item_price,stock_q)
VALUES ("phone8", "htc", "denver", 230, TRUE);

INSERT INTO product (item_id, product_name, department_name, item_price,stock_q)
VALUES ("phone9", "oneplus", "denver", 790, TRUE);

INSERT INTO product (item_id, product_name, department_name, item_price,stock_q)
VALUES ("phonex", "nokia", "denver", 50, TRUE);
