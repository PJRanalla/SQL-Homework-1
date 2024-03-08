-- 1. How many actors are there with the last name 'Wahlberg'?

select last_name from actor where last_name like 'Wahlberg';

-- answer: two actors have the last name Wahlberg.

--2. How many payments were made between 3.99 and 5.99?

select customer_id, amount
from payment 
where amount between 3.99 and 5.99
order by amount desc;

-- answer: 5602 payments were made between 3.99 and 5.99. 

-- 3. What film does the store have the most of? (search in inventory)

select film_id , count(film_id)
from inventory
group by film_id 
order by count desc;

-- answer: There are 72 different films that all have 8 copies.

-- 4. How many customers have the last name 'William'?

select last_name from customer where last_name like 'Williams';

-- answer: There are no customers with the last name William, however there was one customer with the last name Williams.

-- 5. What store employee(get the id) sold the most rentals?


select staff_id, sum(rental_id)
from rental 
group by staff_id; 

-- anser: Mike Hillyer sold the most rentals

-- 6. How many different district names are there?

select district, count(distinct district)
from address
group by district;

--- answer: There are 378 different district names

-- 7. What film has the most actors in it? (use film_actor and get film_id)

select film_id, count(actor_id)
from film_actor
group by film_id
order by count desc;

--- answer: The film "Lambs Cincinatti" with 15 actors total.

-- 8. From store_id 1, how many customers have a last name ending with 'es'? (use customer table)

select last_name, store_id
from customer
where last_name like '%es'
order by store_id asc;

--- answer: 13 customers have a last name ending in 'es' from store_id 1

-- 9. How many payment amounts(4.99, 5.99, etc.) had a number of rentals above 250
--    for customers with ids between 380 and 430? (use group by and have > 250)

select amount, count(rental_id > 250)
from payment
where customer_id between 380 and 430
group by amount
order by count desc;

-- answer: 3 payment amounts: 0.99 had 269 rentals, 2.99 had 290 rentals, 4.99 had 281 rentals.

-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?

select rating, count(film_id)
from film
group by rating;

--- answer: There are 5 rating categories and PG-13 has the most movies. 

 









