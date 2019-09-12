DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;
USE bamazon_DB;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  productName VARCHAR(30) NOT NULL,
  departmentName VARCHAR(30) NOT NULL,
  itemPrice DECIMAL(10,2) DEFAULT 0,
  StockQuantity INT DEFAULT 0,
  PRIMARY KEY(id)
);

INSERT INTO products (productName, departmentName, itemPrice,stockQuantity)
VALUES ('iPhone Pro', 'Electronics', 1100, 5);

INSERT INTO products (productName, departmentName, itemPrice,stockQuantity)
VALUES ('Samsung Note', 'Electronics', 850, 7);

INSERT INTO products (productName, departmentName, itemPrice,stockQuantity)
VALUES ('Google Pixel', 'Electronics', 400, 5);

INSERT INTO products (productName, departmentName, itemPrice,stockQuantity)
VALUES ('Yeezy Ultra Boost', 'Apparel', 350, 5);

INSERT INTO products (productName, departmentName, itemPrice,stockQuantity)
VALUES ('Versace T-shirt', 'Apparel', 90, 2);

INSERT INTO products (productName, departmentName, itemPrice,stockQuantity)
VALUES ('Gucci watch', 'Accessories', 600, 1);

INSERT INTO products (productName, departmentName, itemPrice,stockQuantity)
VALUES ('Calvin Clien Necklace', 'Accessories', 75, 30);

INSERT INTO products (productName, departmentName, itemPrice,stockQuantity)
VALUES ('Samsung TV 60inch', 'Electronics', 1500, 34);

INSERT INTO products (productName, departmentName, itemPrice,stockQuantity)
VALUES ('Ibuypower pc', 'Electronics', 900, 9);

INSERT INTO products (productName, departmentName, itemPrice,stockQuantity)
VALUES ('table top wood', 'Accessories', 90, 12);

CREATE TABLE departments (
	DepartmentId INT NOT NULL AUTO_INCREMENT,
	DepartmentName VARCHAR(100) NOT NULL,
	OverheadCost DECIMAL(10,2) NOT NULL,
	TotalSales DECIMAL(10,2),
	PRIMARY KEY(DepartmentId)
);

INSERT INTO departments(DepartmentName, OverheadCost) VALUES('Apparel', 500);
INSERT INTO departments(DepartmentName, OverheadCost) VALUES('Electronics', 500);
INSERT INTO departments(DepartmentName, OverheadCost) VALUES('Accessories', 500);
