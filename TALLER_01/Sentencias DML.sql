-- Insertar categorías
INSERT INTO Category (name) VALUES ('Food');
INSERT INTO Category (name) VALUES ('Furniture');

-- Insertar productos
INSERT INTO Product (name, price, category_name) VALUES ('Sofa', 199.99, 'Furniture');
INSERT INTO Product (name, price, category_name) VALUES ('Pizza', 9.99, 'Food');

-- Insertar datos en Food
INSERT INTO Food (product_id, expiration_date, calories) VALUES (2, '2024-12-31', 800);

-- Insertar datos en Furniture
INSERT INTO Furniture (product_id, manufacture_date) VALUES (1, '2023-01-15');

-- Insertar orden
INSERT INTO `Order` (id) VALUES (NULL);

-- Insertar datos en order_line
INSERT INTO order_line (quantity, order_id, product_id) VALUES (2, 1, 1);
INSERT INTO order_line (quantity, order_id, product_id) VALUES (3, 1, 2);
