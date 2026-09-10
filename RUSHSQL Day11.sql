/* Task 1:
	Create a report showing total sales for each category:
		- High: Sales over 50
		- Medium: Sales Between 20 and 50
		- Low: Sales 20 or less
	The results are sorted from highest to lowest total sales.
*/
use SalesDB

select
Sales,
Case
when Sales > 50 then 'High'
when Sales between 20 and 50 then 'Medium'
when Sales <= 20 then 'Low'
from dbo.[Orders (1)]


/* Task 2:
	Retrieve Customer Details With Abbreviated Category
	Furniture - FUR
	Office Supplies - OS
	Technology - TECH
*/

select
Customer_Name,
Case
when 'Furniture' then 'FUR'
when 'Office Supplies' then 'OS'
when 'Technology' then 'TECH'
else 'N/A'
End
from dbo.[Orders (1)]

/* Task 4:
	Calculate the average score of customers, treating NULL as 0,
	and provide CustomerID and LastName details.
*/

select
Customer_Name,
LastName,

when Customer_ID and LastName is Null then 0

from Sales.Customers

/* Task 5:
	Count how many orders each customers made with sales greater than 30
*/

select
	CustomerID,
	SUM(
		Case
			when Sales > 30 then 1
			else 0
		End
	) AS TotalOrdersHighSales,
	COUNT(*) AS TotalOrders
from Sales.Orders
group by CustomerID;

-----------------------------------------------------------------------------
-- Find the total number of customers
select count(distinct Customer_Name) from dbo.[Orders (1)]

-- Find the total sales of all orders
select sum(Sales) from dbo.[Orders (1)]

-- Find the average sales of all orders
select avg(Sales) from dbo.[Orders (1)]

-- Find the highest sales among customers
select max(Sales) from dbo.[Orders (1)]

-- Find the lowest sales amolng customers
select min(Sales) from dbo.[Orders (1)]

/* Find the number of orders, total sales, average sales, highest sales,
and lowest sales per customers. */
