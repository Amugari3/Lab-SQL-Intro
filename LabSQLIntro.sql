-- 2. Unimos los datos de las tablas actor, film y customer con el inner join, utilizando la tabla film actor, inventory y rental como tablas puentes.

SELECT 
	*
FROM sakila.actor a
INNER JOIN sakila.film_actor fa ON a.actor_id = fa.actor_id
INNER JOIN sakila.film f ON f.film_id = fa.film_id
INNER JOIN sakila.inventory i ON i.film_id = f.film_id
INNER JOIN sakila.rental r ON r.inventory_id = i.inventory_id
INNER JOIN sakila.customer c ON c.customer_id = r.customer_id;

-- 3. Sacamos la variable title de la tabla film

SELECT 
	title
FROM sakila.film;

-- 4. Sacamos el nombre de los lenguajes utilizados en las pelis, uniendo la tabla film y language

SELECT 
	* 
FROM sakila.film f 
INNER JOIN sakila.language l ON l.language_id = f.language_id;


SELECT DISTINCT name AS unique_language
FROM language;

-- 5. Sacamos los storesIDs para saber el nº de tiendas que tienen

SELECT 
	store_id
FROM sakila.store;

-- 6. Sacamos los staffIDs de la tabla staff para saber el nº de empleados

SELECT 
	staff_id
FROM sakila.staff;

-- 7. Sacamos los nombres de los empleados de la lista staff

SELECT 
	first_name
FROM sakila.staff;