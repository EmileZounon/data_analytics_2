SELECT AVG(amount) FROM payment;
SELECT ROUND(AVG(amount),2) FROM payment;
SELECT MIN(amount) FROM payment;
SELECT amount FROM payment ORDER BY amount;
SELECT COUNT (amount) FROM payment WHERE amount = 0.00
SELECT staff_id, COUNT(amount),SUM(amount) FROM payment GROUP BY staff_id;
select staff_id, count(amount), sum(amount) from payment group by staff_id;
SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id
SELECT customer_id, SUM(amount) FROM Payment GROUP BY customer_id HAVING SUM (amount)>200;
SELECT store_id, COUNT (customer_id) FROM customer GROUP BY store_id;
SELECT store_id, COUNT (customer_id) FROM customer GROUP BY store_id HAVING COUNT(customer_id)>300;
SELECT rating, rental_rate FROM film WHERE rating IN('R','G', 'PG');
SELECT rating, rental_rate FROM film WHERE rating IN ('R', 'G', 'PG') GROUP BY rating, rental_rate;
SELECT rating, rental_rate FROM film WHERE rating IN ('R', 'G', 'PG') GROUP BY rating, rental_rate HAVING AVG(rental_rate)<3;
SELECT customer_id, COUNT(amount) FROM payment GROUP BY customer_id HAVING COUNT(amount)>35;
SELECT * FROM customer INNER JOIN payment ON customer.customer_id = payment.customer_id WHERE first_name LIKE 'A%';
SELECT * from film LIMIT 5;
SELECT * from inventory LIMIT 5;
SELECT film.film_id, film.title, inventory_id FROM film LEFT OUTER JOIN inventory ON inventory.film_id = film.film_id WHERE inventory.film_id is NULL ORDER BY film.film_id;
---Join the film to the film_actor table.
SELECT * from film LIMIT 5;
SELECT * from film_actor LIMIT 5;
SELECT * from film INNER JOIN film_actor ON film.film_id = film_actor.film_id;
--Join the actor table to the film_actor table. 
SELECT * from actor LIMIT 5 ;
SELECT * from film_actor LIMIT 5;
SELECT DISTINCT * from actor INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id;
SELECT * from actor LEFT OUTER JOIN film_actor ON actor.actor_id = film_actor.actor_id;
---Try to join the actor, film_actor, and film table together (3 joins!)
SELECT * from actor INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id INNER JOIN film ON film_actor.film_id = film.film_id;