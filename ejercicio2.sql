/*1. Crea una base de datos llamada "MiBaseDeDatos".*/
CREATE DATABASE MiBaseDeDatos

/*2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "edad" (entero).*/
CREATE TABLE IF NOT EXISTS usuarios(
	id INT PRIMARY KEY,
	nombre VARCHAR(255),
	edad INT)

/*3. Inserta dos registros en la tabla "Usuarios".*/
INSERT INTO usuarios (id, nombre, edad)
VALUES (1, 'Andrea',21),
(2,'Catia',22)

/*4. Actualiza la edad de un usuario en la tabla "Usuarios".*/
UPDATE usuarios
SET edad = 23
WHERE id = 1

/*5. Elimina un usuario de la tabla "Usuarios".*/
DELETE FROM usuarios
WHERE id = 2

/*1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "pais" (texto).*/
CREATE TABLE IF NOT EXISTS ciudades(
	id INT PRIMARY KEY,
	nombre VARCHAR(255),
	pais VARCHAR(255))

/*2. Inserta al menos tres registros en la tabla "Ciudades".*/
INSERT INTO ciudades 
VALUES (1, 'sevilla','españa' ),
(2,'paris','francia'),
(3, 'roma','italia')

/*3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id"
de la tabla "Ciudades".*/
ALTER TABLE usuarios
ADD CONSTRAINT fk_id
FOREIGN KEY (id)
REFERENCES ciudades(id)


/*4. Realiza una consulta que muestre los nombres de los usuarios junto con el
nombre de su ciudad y país (utiliza un LEFT JOIN).*/
SELECT 
u.nombre as nombre,
s.nombre as nombre,
s.pais as pais
FROM public.usuarios u
LEFT JOIN public.ciudades s
ON u.id = s.id

/*5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad
asociada (utiliza un INNER JOIN).*/
SELECT * FROM public.usuarios u
INNER JOIN public.ciudades s
ON u.id = s.id
