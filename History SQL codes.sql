--- 11-11-2022 15:20:50
--- SQLite

CREATE TABLE Products(
   id INT NOT NULL,
   name CHAR(40),
   price money);

--- 11-11-2022 15:21:02
--- SQLite
DROP TABLE demo;

--- 11-11-2022 15:21:51
--- SQLite
INSERT INTO Products
VALUES (2, "Manzana deshidratada", 230);

--- 11-11-2022 15:22:06
--- SQLite
INSERT INTO Products
VALUES (3, "Pera deshidratada", 200);

--- 11-11-2022 15:22:26
--- SQLite
INSERT INTO Products
VALUES (4, "Limon deshidratado", 400);

--- 11-11-2022 15:22:58
--- SQLite
INSERT INTO Products
VALUES (5, "Anana deshidratado", 500);

--- 11-11-2022 15:23:51
--- SQLite
INSERT INTO Products
VALUES (6, "Pomelo deshidratado", 500);

--- 11-11-2022 15:25:00
--- SQLite
INSERT INTO Products
VALUES (7, "Manzana verde deshidratada", 300);

--- 11-11-2022 15:25:24
--- SQLite
SELECT * FROM Products;

--- 11-11-2022 15:25:42
--- SQLite
ALTER TABLE Products
ADD Stock INT;

--- 11-11-2022 15:26:24
--- SQLite
UPDATE Products
SET stock=40
WHERE id=1;

--- 11-11-2022 15:26:31
--- SQLite
UPDATE Products
SET stock=50
WHERE id=2;

--- 11-11-2022 15:26:39
--- SQLite
UPDATE Products
SET stock=40
WHERE id=3;

--- 11-11-2022 15:26:49
--- SQLite
UPDATE Products
SET stock=20
WHERE id=4;

--- 11-11-2022 15:27:01
--- SQLite
UPDATE Products
SET stock=10
WHERE id=6;

--- 11-11-2022 15:27:36
--- SQLite
SELECT * FROM Products;

--- 11-11-2022 15:27:50
--- SQLite
UPDATE Products
SET stock = 18
WHERE id=5;

--- 11-11-2022 15:28:03
--- SQLite
SELECT * FROM Products;

--- 11-11-2022 15:28:16
--- SQLite
DELETE FROM Products
WHERE id=7;

--- 11-11-2022 15:28:26
--- SQLite
SELECT * FROM Products;

--- 11-11-2022 15:29:18
--- SQLite
CREATE TABLE Client(
  	id INT NOT NULL,
	name CHAR(40),
 	last_name CHAR(50),
  	age INT,
  	address TINYTEXT,
PRIMARY KEY (id)
);

--- 11-11-2022 15:31:00
--- SQLite
INSERT INTO Client
VALUES (1, "Homero J.", " Simpson", "80", "Evergreen Terrace 742");

--- 11-11-2022 15:32:51
--- SQLite
INSERT INTO Client
VALUES (2, "Afua", "Kwafo Awua", 32, "Av. Everyellow 547");

--- 11-11-2022 15:33:12
--- SQLite
SELECT * FROM Client;

--- 11-11-2022 15:33:50
--- SQLite
UPDATE Client
SET age=41
WHERE id=1;

--- 11-11-2022 15:34:12
--- SQLite
UPDATE Client
SET address="Evergreen 475"
WHERE id=2;

--- 11-11-2022 15:35:07
--- SQLite
INSERT INTO Client
VALUES (3, "Kofi", "Kwafo Awua", 30, "Colon 01");

--- 11-11-2022 15:36:30
--- SQLite
CREATE TABLE Orders (
id INT NOT NULL,
order_number INT,
client_id INT,
product_id INT,
PRIMARY KEY (id),
FOREIGN KEY (client_id) REFERENCES Client(id),
FOREIGN KEY (product_id) REFERENCES Products(id)
);

--- 11-11-2022 15:37:10
--- SQLite
INSERT INTO Orders
VALUES (1, 7854, 3, 4);



--- 11-11-2022 15:44:15
--- SQLite
SELECT Orders.order_number, Products.name, Products.price, Products.stock
FROM Orders
INNER JOIN Products  ON Orders.product_id = Products.id;

--- 11-11-2022 15:45:26
--- SQLite
SELECT Orders.order_number, Client.name, Client.last_name, Client.address
FROM Orders
INNER JOIN Client  ON Orders.client_id = Client.id;

--- 11-11-2022 15:46:14
--- SQLite
SELECT * FROM Orders;

