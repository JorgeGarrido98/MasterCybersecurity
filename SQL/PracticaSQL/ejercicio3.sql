/* Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "precio" (numérico). */
CREATE TABLE Productos (
  id INT PRIMARY KEY,
  nombre VARCHAR(255),
  precio DECIMAL(10,2)
);

/* Inserta al menos cinco registros en la tabla "Productos". */
INSERT INTO Productos (id, nombre, precio)
VALUES
  (1, 'Portátil Lenovo ThinkPad X1 Carbon', 5999.99),
  (2, 'Smartphone Samsung Galaxy S24', 999.99),
  (3, 'Auriculares inalámbricos Sony WH-1000XM5', 49.99),
  (4, 'Cafetera Nespresso Vertuo Next', 39.99),
  (5, 'Silla ergonómica Herman Miller Aeron', 89.99);

/* Actualiza el precio de un producto en la tabla "Productos". */
UPDATE Productos
SET precio = 799.99
  WHERE id = 2;

/* Elimina un producto de la tabla "Productos". */
DELETE FROM Productos
  WHERE id = 5;

/* Realiza una consulta que muestre los nombres de los usuarios junto con los
nombres de los productos que han comprado (utiliza un INNER JOIN con la
tabla "Productos"). */
ALTER TABLE Usuarios
	ADD COLUMN fk_producto INT;

ALTER TABLE Usuarios
ADD CONSTRAINT fk_producto
FOREIGN KEY (id) REFERENCES Productos(id);

SELECT u.nombre, p.nombre FROM Usuarios u
INNER JOIN Productos p ON u.fk_producto = p.id;