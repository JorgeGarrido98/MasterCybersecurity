/* Crear una tabla llamada "Clientes" con las columnas: id (entero, clave primaria),
nombre (texto) y email (texto). */
CREATE TABLE Clientes (
  id INT PRIMARY KEY,
  nombre VARCHAR(255),
  email VARCHAR(255)
);

/* Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y
email="juan@example.com". */
INSERT INTO Clientes (id, nombre, email)
	VALUES (1, 'Juan', 'juan@example.com');

/* Actualizar el email del cliente con id=1 a "juan@gmail.com". */
UPDATE Clientes
	SET email = 'juan@gmail.com'
	WHERE id = 1;

/* Eliminar el cliente con id=1 de la tabla "Clientes". */
DELETE FROM Clientes
	WHERE id = 1;

/* Crear una tabla llamada "Pedidos" con las columnas: id (entero, clave primaria),
cliente_id (entero, clave externa referenciando a la tabla "Clientes"), producto
(texto) y cantidad (entero). */
CREATE TABLE Pedidos (
  id INT PRIMARY KEY,
  cliente_id INT,
  producto VARCHAR(255),
  cantidad INT,
  FOREIGN KEY (cliente_id) REFERENCES Clientes(id)
);

/* Insertar un nuevo pedido en la tabla "Pedidos" con id=1, cliente_id=1,
producto="Camiseta" y cantidad=2. */
INSERT INTO Pedidos (id, cliente_id, producto, cantidad)
	VALUES (1, 1, 'Camiseta', 2);

/* Actualizar la cantidad del pedido con id=1 a 3. */
UPDATE Pedidos
	SET cantidad = 3
	WHERE id = 1;

/*  Eliminar el pedido con id=1 de la tabla "Pedidos". */
DELETE FROM Pedidos
	WHERE id = 1;

/*  Crear una tabla llamada "Productos" con las columnas: id (entero, clave
primaria), nombre (texto) y precio (decimal). */
CREATE TABLE Productos (
  id INT PRIMARY KEY,
  nombre VARCHAR(255),
  precio DECIMAL(10, 2)
);

/* Insertar varios productos en la tabla "Productos" con diferentes valores. */
INSERT INTO Productos (id, nombre, precio) 
	VALUES (1, 'Laptop', 999.99),
        (2, 'Teclado', 49.90),
        (3, 'Ratón', 25.50),
        (4, 'Monitor', 199.95),
        (5, 'Impresora', 150.00),
        (6, 'Altavoces', 39.99),
        (7, 'Webcam', 89.90),
        (8, 'Micrófono', 59.00),
        (9, 'Silla de oficina', 129.99),
        (10, 'Mesa de escritorio', 249.99);

/* Consultar todos los clientes de la tabla "Clientes" */
SELECT * FROM Clientes;

/* Consultar todos los pedidos de la tabla "Pedidos" junto con los nombres de los
clientes correspondientes. */
SELECT c.nombre, p.* FROM Pedidos p
	JOIN Clientes c ON p.cliente_id = c.id

/* Consultar los productos de la tabla "Productos" cuyo precio sea mayor a $50. */
SELECT * FROM Productos
	WHERE precio > 50;

/* Consultar los pedidos de la tabla "Pedidos" que tengan una cantidad mayor o
igual a 5. */
SELECT * FROM Pedidos
	WHERE cantidad >= 5;

/* Consultar los clientes de la tabla "Clientes" cuyo nombre empiece con la letra
"A". */
SELECT * FROM Clientes
	WHERE nombre LIKE 'A%';

/* Realizar una consulta que muestre el nombre del cliente y el total de pedidos
realizados por cada cliente. */
SELECT c.nombre, COUNT(p.id) AS total_pedidos FROM Clientes c
	JOIN Pedidos p ON c.id = p.cliente_id
		GROUP BY c.nombre;

/* Realizar una consulta que muestre el nombre del producto y la cantidad total de
pedidos de ese producto. */
SELECT p.nombre, COUNT(pe.id) AS total_pedidos FROM Productos p
	JOIN Pedidos pe ON p.nombre = pe.producto
		GROUP BY p.nombre;

/* Agregar una columna llamada "fecha" a la tabla "Pedidos" de tipo fecha. */
ALTER TABLE Pedidos
  ADD COLUMN fecha DATE;

/* Agregar una clave externa a la tabla "Pedidos" que haga referencia a la tabla
"Productos" en la columna "producto". */
ALTER TABLE Pedidos
	ADD COLUMN producto_id INT;

ALTER TABLE Pedidos
	ADD CONSTRAINT fk_pedido_producto
	FOREIGN KEY (producto_id)
	REFERENCES Productos(id);

/* Realizar una consulta que muestre los nombres de los clientes, los nombres de
los productos y las cantidades de los pedidos donde coincida la clave externa. */
SELECT c.nombre, p.nombre, pe.cantidad FROM Clientes c
	JOIN Pedidos pe ON c.id = pe.cliente_id
	JOIN Productos p ON pe.producto_id = p.id;
