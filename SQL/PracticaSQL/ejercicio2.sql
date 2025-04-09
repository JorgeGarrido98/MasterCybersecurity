/* Crea una base de datos llamada "MiBaseDeDatos". */
CREATE DATABASE MiBaseDeDatos;

/* Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "edad" (entero). */
CREATE TABLE Usuarios (
  id INT PRIMARY KEY,
  nombre VARCHAR(255),
  edad INT
);

/* Inserta dos registros en la tabla "Usuarios". */
INSERT INTO usuarios (id, nombre, edad)
VALUES 
    (1, 'Juan Pérez', 30),
  	(2, 'Ana Gómez', 25);

/* Actualiza la edad de un usuario en la tabla "Usuarios". */
UPDATE usuarios
SET edad = 31
  WHERE id = 1;

/* Elimina un usuario de la tabla "Usuarios". */
DELETE FROM usuarios
  WHERE id = 2;

/* Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "pais" (texto). */
CREATE TABLE Ciudades (
  id INT PRIMARY KEY,
  nombre VARCHAR(255),
  pais VARCHAR(255)
);

/* Inserta al menos tres registros en la tabla "Ciudades". */
INSERT INTO Ciudades (id, nombre, pais)
VALUES
  (1, 'Madrid', 'España'),
  (2, 'Buenos Aires', 'Argentina'),
  (3, 'París', 'Francia'),
  (4, 'Tokio', 'Japón'),
  (5, 'Nueva York', 'Estados Unidos');

/* Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id"
de la tabla "Ciudades". */
ALTER TABLE Usuarios
	ADD COLUMN fk_ciudad INT;

ALTER TABLE Usuarios
ADD CONSTRAINT fk_ciudad
FOREIGN KEY (id) REFERENCES Ciudades(id);

/* Realiza una consulta que muestre los nombres de los usuarios junto con el
nombre de su ciudad y país (utiliza un LEFT JOIN). */
SELECT u.nombre, c.nombre, c.pais FROM Usuarios u
LEFT JOIN Ciudades c ON u.fk_ciudad = c.id;

/* Realiza una consulta que muestre solo los usuarios que tienen una ciudad
asociada (utiliza un INNER JOIN). */
SELECT u.nombre FROM Usuarios u
INNER JOIN Ciudades c ON u.fk_ciudad = c.id;
