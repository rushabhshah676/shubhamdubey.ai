use SalesDB

select
*,
CASE
when Sales > (select avg(Sales) from dbo.[Orders (1)]) then Sales
else 0
END as printScore
from dbo.[Orders (1)]


select
*
from dbo.[Orders (1)]
where Sales > (select avg(Sales) from dbo.[Orders (1)])



/* TASK 1:
	Find the products that have a price higher than the average price of 
	all products.
*/

select
*
from dbo.[Orders (1)]


/* TASK 2:
	Rank Customers based on their total amount of sales.
*/

select
*,
rank() over (order by TotalSales desc) as Ranking
from
(select
Customer_Name,
sum(Sales) as TotalSales
from dbo.[Orders (1)]
group by Customer_Name) as Orders


/* TASK 3:
	Show the product IDs, product names, prices, and the total number 
	of Orders.
*/

SELECT
    `Product_ID`,
    `Product_Name`,
    Sales AS Price,
    COUNT(`Order ID`) AS `Total Orders`
GROUP BY
    `Product_ID`,
    `Product_Name`,
    Sales;
FROM dbo.Orders

/* TASK 4:
    Show Customer details along with their total sales.
*/
--Main Query

select
c.*,
t.TotalSales
from Sales.Customers as c
LEFT JOIN (
    --Subquery
    select
        CustomerID,
        sum(Sales) as TotalSales
    from Sales.Orders
    group by CustomerID
) as t
    ON c.CustomerID = t.CustomerID;


/* TASK 5:
    Show all customers details and the total orders of each customer.
*/
select
c.*,
t.TotalSales
from Sales.Customers as c
LEFT JOIN (
    --Subquery
    select
        CustomerID,
        sum(Sales) as TotalSales
    from Sales.Orders
    group by CustomerID
) as t
    ON c.CustomerID = t.CustomerID;


/* TASK 6:
    Show the details of orders made by customer in Germany.
*/

select
*
from Sales.Orders
where CustomerID IN (
    --Subsquery
    select
        CustomerID
    from Sales.Orders
    where Country = 'Germany'
);
