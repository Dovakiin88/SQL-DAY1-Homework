--Question 1
select last_name, first_name 
from actor a 
where last_name like 'Wahlberg';

--Question 2
select amount, count(amount) 
from payment p 
where amount >= 3.99 and amount <= 5.99
group by amount; 

--Question 3
select film_id, count(film_id)  
from inventory i
where store_id = 1
group by film_id 
union 
select film_id, count(film_id)  
from inventory i
where store_id = 2
group by film_id 

  --From comparing both store inventories. The the highest film id that is most carried is ID: 200- Curtain Videotape

--Question 4
select last_name, first_name 
from customer c 
where last_name like 'William'

   -- NO customers with last name william

--Question 5
select staff_id, count(staff_id)
from rental r 
where staff_id = 1
group by staff_id 
union 
select staff_id , count(staff_id)
from rental r2 
where staff_id = 2
group by staff_id 

 --Staff member 2: Jon stephens sold the most rentals

--Question 6
select count(distinct district)
from address a;


--Question 7
select film_id, count(film_id) 
from film_actor fa 
group by film_id 

 --Film 508

--Question 8
select last_name 
from customer c 
where last_name like '%es' and store_id = 1;
  -- 13 names from store 1 end in es

--Question 9
select 
customer_id , 
sum(amount) 
from payment p 
where customer_id >= 380 and customer_id <= 430
group by customer_id 
having sum(amount) > 250;
  --Customer ID: 390, 410, 403, 380

--Question 10
select rating, count( rating) 
from film f 
group by rating 

  -- There are 5 rating categories and PG-13 is the most frequent rating