/* Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave
primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y
"id_producto" (entero, clave foránea de la tabla "Productos"). */
CREATE TABLE Pedidos (
  id INT PRIMARY KEY,
  id_usuario INT,
  id_producto INT
);

/* Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con
productos. */
INSERT INTO Pedidos (id, id_usuario, id_producto)
VALUES
  (1, 1, 2),
  (2, 2, 1),
  (3, 3, 4),
  (4, 1, 3),
  (5, 2, 5);

/* Realiza una consulta que muestre los nombres de los usuarios y los nombres de
los productos que han comprado, incluidos aquellos que no han realizado
ningún pedido (utiliza LEFT JOIN y COALESCE). */
SELECT
COALESCE(u.nombre, 'No tiene nombre') AS nombre_usuario,
COALESCE(p.nombre, 'No tiene nombre') AS nombre_producto
FROM Pedidos p
LEFT JOIN Usuarios u ON p.id_usuario = u.id
LEFT JOIN Productos p ON p.id_producto = p.id;

/* Realiza una consulta que muestre los nombres de los usuarios que han
realizado un pedido, pero también los que no han realizado ningún pedido
(utiliza LEFT JOIN). */
SELECT
COALESCE(u.nombre, 'No tiene nombre') AS nombre_usuario
FROM Pedidos p
LEFT JOIN Usuarios u ON p.id_usuario = u.id;

/* Agrega una nueva columna llamada "cantidad" a la tabla "Pedidos" y actualiza
los registros existentes con un valor (utiliza ALTER TABLE y UPDATE). */
ALTER TABLE Pedidos
ADD COLUMN cantidad INT;
UPDATE Pedidos
SET cantidad = 1
  WHERE id IN (1, 2, 3, 4, 5);