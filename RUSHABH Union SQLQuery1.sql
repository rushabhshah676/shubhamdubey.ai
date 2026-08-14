select * from sales.Customers
select * from sales.Employees

--Union--
select firstname, lastname from Sales.Customers
union
select firstname, lastname from Sales.Employees

--Union all--
select firstname, lastname from Sales.Customers
union all
select firstname, lastname from Sales.Employees

--Intersect--
select firstname, lastname from Sales.Customers
intersect
select firstname, lastname from Sales.Employees

--except--
select firstname, lastname from Sales.Customers
except
select firstname, lastname from Sales.Employees

