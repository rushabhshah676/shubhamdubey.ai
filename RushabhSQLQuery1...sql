use SalesDB

select*from Sales.Orders

select
CustomerID,
sum(Sales) over() as TotalSales
from Sales.Orders



--Partition by
select
CustomerID,
sum(Sales) over(partition by CustomerID) as TotalSales
from Sales.Orders

select
CustomerID,
sum(Sales) as TotaSales
from Sales.Orders



/* Task 5;
	Find the Total sales across all orders, for each product,
	and for each combination of product and order status,
	additionally providing details such as OrderID and OrderDate
*/
Select * from Sales.Orders

select
OrderID,
OrderDate,
ProductID,
OrderStatus,
sum(Sales) over() as TotalSales,
sum(Sales) over(partition by ProductID) as TotalSales,
sum(Sales) over(partition by ProductID, OrderStatus) as TotalSales
from Sales.Orders

 

/*Task 6;
	Rank each order by Sales from highest to lowest
*/

select * from dbo.[Orders (1)]

select
Customer_Name,
Sales,
Rank() over(order by Sales desc) as Ranking
from dbo.[Orders (1)]

select * from Sales.Orders

select
CustomerID,
Sales,
dense_rank() over(order by Sales desc) as Ranking
from Sales.Orders

