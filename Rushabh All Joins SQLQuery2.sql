use MyDatabase

select * from customers
select * from orders

select c.*, o.* from customers as c
left join orders as o
on c.id = o.customer_id

select c.*, o.* from customers as c
right join orders as o
on c.id = o.customer_id

select c.*, o.* from customers as c
inner join orders as o
on c.id = o.customer_id

select c.*, o.* from customers as c
full join orders as o
on c.id = o.customer_id

--Cross Join 
select * from customers
cross join orders

--Left Anti Join 
select c.*, o.* from customers as c
left join orders as o
on c.id = o.customer_id
where o.customer_id is null

--Right Anti Join 
select c.*, o.* from customers as c
right join orders as o
on c.id = o.customer_id
where c.id is null

--Full Anti Join 
select c.*, o.* from customers as c
full join orders as o
on c.id = o.customer_id
where c.id is null or o.customer_id is null
  