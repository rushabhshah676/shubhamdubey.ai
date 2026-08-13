use MyDatabase

-- Retrieve All Customer Data
select * from customers

-- Retrieve All Order Data
select * from orders

-- Retrieve each customer's name, country, and score.
select
first_name,
country,
score 
From customers

-- Retrieve customers with a score not equal to 0
select * from customers
where score !=0

-- Retrieve customers from Germany
select * from customers
where country = 'Germany' 

-- Retrieve the name and country of customers from Germany
select 
first_name,
country 
from customers
where country = 'Germany'

/* Retrieve all customers and 
   sort the results by the highest score first. */
select * from customers
order by  score desc

/* Retrieve all customers and 
   sort the results by the lowest score first. */
select * from customers
order by  score asc

/* Retrieve all customers and 
   sort the results by the country. */
select * from customers
order by country asc

/* Retrieve all customers and 
   sort the results by the country and then by the highest score. */
select * from customers
order by country asc, score desc

/* Retrieve the name, country, and score of customers 
   whose score is not equal to 0
   and sort the results by the highest score first. */
select 
first_name,
country,
score 
from customers
where score !=0
order by score desc

/* ==============================================================================
   GROUP BY
=============================================================================== */

-- Find the total score for each country
select 
    country,
    SUM(score) as total_score
from customers
group by country
