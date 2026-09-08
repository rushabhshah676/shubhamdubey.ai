/* Task 6:
   Identify The Customers Who Have No Scores
*/

use SalesDB

select * from Sales.Customers
where Score is null


/* Task 7:
    List All Details For Customers Who Have Not PLaced Any Orders
*/

select * from left join Sales.Orders as c
where o.CustomerID is null
orders as o
on c.id = o.customer_id


/* Task 7:
    List All Details For Customers Who Have Not PLaced Any Orders
*/
WITH Orders AS (
select 1 AS Id, 'A' AS Category UNION
select 2, NULL UNION
select 3, '' UNION
select 4, ' ' 
)
select
*,
DATALENGTH(Category) AS LenCategory,  
TRIM(Category) AS Policy1,
NULLIF(TRIM(Category), '') AS Policy2,
COALESCE(NULLIF(TRIM(Category), ''), 'unknown') AS Policy3
From Orders


select * from dbo.[Orders (1)]
where Customer_ID is null

-----------------------------------------------------------------------------------

-- discount > 0.4 == worst
-- discount > 0.2 == avg
-- else > good price

select * from dbo.[Orders (1)]
select Customer_Name, Discount




--ship mode wise sales
select * from dbo.[Orders (1)]
where Ship_Mode = ASC

-- cat, sub-cat wise sales

select
Category, Sub_Category, sum(Sales) AS TotalSales
from dbo.[Orders (1)]
group by Category, Sub_Category
order by TotalSales desc


