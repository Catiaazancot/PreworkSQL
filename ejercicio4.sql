/*1. Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave
primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y
"id_producto" (entero, clave foránea de la tabla "Productos").*/
CREATE TABLE IF NOT EXISTS pedidos(
	id INT PRIMARY KEY,
	usuario_id INT,
	producto_id INT,
	CONSTRAINT fk_usuario_id FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
	CONSTRAINT fk_producto_id FOREIGN KEY (producto_id) REFERENCES productos(id))

/*2. Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con
productos.*/
INSERT INTO pedidos (id,usuario_id,producto_id)
VALUES(1,2,3),
(2,3,2),
(3,1,2)

/*3. Realiza una consulta que muestre los nombres de los usuarios y los nombres de
los productos que han comprado, incluidos aquellos que no han realizado
ningún pedido (utiliza LEFT JOIN y COALESCE).*/
SELECT
u.nombre as nombre,
s.nombre as nombre
FROM public.usuarios u
LEFT JOIN public.productos s
ON u.id = s.id

/*4. Realiza una consulta que muestre los nombres de los usuarios que han
realizado un pedido, pero también los que no han realizado ningún pedido
(utiliza LEFT JOIN).*/
SELECT 
u.nombre as nombre
FROM public.usuarios u
LEFT JOIN public.pedidos s
ON u.id = s.usuario_id

/*5. Agrega una nueva columna llamada "cantidad" a la tabla "Pedidos" y actualiza
los registros existentes con un valor (utiliza ALTER TABLE y UPDATE)*/
ALTER TABLE pedidos
ADD COLUMN cantidad INT
UPDATE pedidos
SET cantidad = 4