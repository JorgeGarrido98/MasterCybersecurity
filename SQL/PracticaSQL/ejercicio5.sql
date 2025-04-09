/* Crea una tabla llamada "Clientes" con las columnas id (entero) y nombre
(cadena de texto). */
CREATE TABLE Clientes (
  id INT,
  nombre VARCHAR(255)
);

/* Inserta un cliente con id=1 y nombre='John' en la tabla "Clientes". */
INSERT INTO Clientes (id, nombre) 
VALUES (1, 'John');

/* Actualiza el nombre del cliente con id=1 a 'John Doe' en la tabla "Clientes". */
UPDATE Clientes
SET nombre = 'John Doe'
  WHERE id = 1;

/* Elimina el cliente con id=1 de la tabla "Clientes". */
DELETE FROM Clientes
  WHERE id = 1;

/* Lee todos los clientes de la tabla "Clientes". */
SELECT * FROM Clientes;

/* Crea una tabla llamada "Pedidos" con las columnas id (entero) y cliente_id
(entero). */
CREATE TABLE Pedidos (
  id INT,
  cliente_id INT
);

/* Inserta un pedido con id=1 y cliente_id=1 en la tabla "Pedidos". */
INSERT INTO Pedidos (id, cliente_id)
  VALUES (1, 1);

/* Actualiza el cliente_id del pedido con id=1 a 2 en la tabla "Pedidos". */
UPDATE FROM Pedidos
SET cliente_id = 2
  WHERE id = 1;

/* Elimina el pedido con id=1 de la tabla "Pedidos". */
DELETE FROM Pedidos
  WHERE id = 1;

/* Lee todos los pedidos de la tabla "Pedidos". */
SELECT * FROM Pedidos;

/* Crea una tabla llamada "Productos" con las columnas id (entero) y nombre
(cadena de texto). */
CREATE TABLE Productos (
  id INT,
  nombre VARCHAR(255)
);

/* Inserta un producto con id=1 y nombre='Camisa' en la tabla "Productos". */
INSERT INTO Productos (id, nombre)
VALUES (1, 'Camisa');

/* Actualiza el nombre del producto con id=1 a 'Pantalón' en la tabla "Productos". */
UPDATE Productos
SET nombre = 'Pantalón'
  WHERE id = 1;

/* Elimina el producto con id=1 de la tabla "Productos". */
DELETE FROM Productos
  WHERE id = 1;

/* Lee todos los productos de la tabla "Productos". */
SELECT * FROM Productos;

/* Crea una tabla llamada "DetallesPedido" con las columnas pedido_id (entero) y
producto_id (entero). */
CREATE TABLE DetallesPedido (
  pedido_id INT,
  producto_id INT
);

/* Inserta un detalle de pedido con pedido_id=1 y producto_id=1 en la tabla
"DetallesPedido". */
INSERT INTO DetallesPedido (pedido_id, producto_id)
VALUES (1, 1);

/* Actualiza el producto_id del detalle de pedido con pedido_id=1 a 2 en la tabla
"DetallesPedido". */
UPDATE FROM DetallesPedido
SET producto_id = 2
  WHERE pedido_id = 1;

/* Elimina el detalle de pedido con pedido_id=1 de la tabla "DetallesPedido". */
DELETE FROM DetallesPedido
  WHERE pedido_id = 1;

/* Lee todos los detalles de pedido de la tabla "DetallesPedido". */
SELECT * FROM DetallesPedido;

/* Realiza una consulta para obtener todos los clientes y sus pedidos
correspondientes utilizando un inner join. */
SELECT * FROM Clientes c
INNER JOIN Pedidos p ON (c.id = p.cliente_id);

/* Realiza una consulta para obtener todos los clientes y sus pedidos
correspondientes utilizando un left join. */
SELECT * FROM Clientes c
LEFT JOIN Pedidos p ON (c.id = p.cliente_id);

/* Realiza una consulta para obtener todos los productos y los detalles de pedido
correspondientes utilizando un inner join. */
SELECT * FROM Productos pr
INNER JOIN DetallesPedido dp ON (pr.id = dp.producto_id)
INNER JOIN Pedidos p ON (p.id = dp.pedido_id);

/* Realiza una consulta para obtener todos los productos y los detalles de pedido
correspondientes utilizando un left join. */
SELECT * FROM Productos pr
LEFT JOIN DetallesPedido dp ON (pr.id = dp.producto_id)
LEFT JOIN Pedidos p ON (p.id = dp.pedido_id);

/* Crea una nueva columna llamada "telefono" de tipo cadena de texto en la tabla
"Clientes". */
ALTER TABLE Clientes
ADD COLUMN telefono VARCHAR(20);

/* Modifica la columna "telefono" en la tabla "Clientes" para cambiar su tipo de
datos a entero. */
ALTER TABLE Clientes
ALTER COLUMN telefono TYPE INTEGER USING telefono::INTEGER;

/* Elimina la columna "telefono" de la tabla "Clientes". */
ALTER TABLE Clientes
DROP COLUMN telefono;

/* Cambia el nombre de la tabla "Clientes" a "Usuarios". */
ALTER TABLE Clientes RENAME TO Usuarios;

/* Cambia el nombre de la columna "nombre" en la tabla "Usuarios" a
"nombre_completo". */
ALTER TABLE Usuarios
RENAME COLUMN nombre TO nombre_completo;

/* Agrega una restricción de clave primaria a la columna "id" en la tabla "Usuarios". */
ALTER TABLE Usuarios
ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);