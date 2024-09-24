-- Crear la base de datos
CREATE DATABASE tienda;
USE tienda;

-- Crear la tabla Order
CREATE TABLE `Order` (
    id INT PRIMARY KEY AUTO_INCREMENT
);

-- Crear la tabla Product
CREATE TABLE Product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DECIMAL(10, 2)
);

-- Crear la tabla Category
CREATE TABLE Category (
    name VARCHAR(100) PRIMARY KEY
);

-- Crear la tabla Order_line
CREATE TABLE order_line (
    id INT PRIMARY KEY AUTO_INCREMENT,
    quantity INT,
    order_id INT,
    product_id INT,
    FOREIGN KEY (order_id) REFERENCES `Order`(id),
    FOREIGN KEY (product_id) REFERENCES Product(id)
);

-- Crear la tabla Food, que hereda de Product
CREATE TABLE Food (
    product_id INT PRIMARY KEY,
    expiration_date DATE,
    calories INT,
    FOREIGN KEY (product_id) REFERENCES Product(id)
);

-- Crear la tabla Furniture, que hereda de Product
CREATE TABLE Furniture (
    product_id INT PRIMARY KEY,
    manufacture_date DATE,
    FOREIGN KEY (product_id) REFERENCES Product(id)
);

-- Relacionar productos con categorías
ALTER TABLE Product
ADD category_name VARCHAR(100),
ADD FOREIGN KEY (category_name) REFERENCES Category(name);
