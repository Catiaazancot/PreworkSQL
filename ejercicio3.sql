/*1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave
primaria), "nombre" (texto) y "precio" (numérico).*/
CREATE TABLE IF NOT EXISTS productos(
	id INT PRIMARY KEY,
	nombre VARCHAR(255),
	precio DECIMAL)

/*2. Inserta al menos cinco registros en la tabla "Productos".*/
INSERT INTO productos (id, nombre, precio)
VALUES (1,'bicicleta',250),
(2,'patines',50),
(3,'coche',3000),
(4,'ordenador',1500),
(5,'silla',20)

/*3. Actualiza el precio de un producto en la tabla "Productos".*/
UPDATE productos
SET precio = 30
WHERE id = 5

/*4. Elimina un producto de la tabla "Productos".*/
DELETE FROM productos
WHERE id = 5

/*5. Realiza una consulta que muestre los nombres de los usuarios junto con los
nombres de los productos que han comprado (utiliza un INNER JOIN con la
tabla "Productos").*/
SELECT
s.nombre as nombre,
p.nombre as nombre
FROM public.usuarios s
INNER JOIN public.productos p
ON s.id = p.id
