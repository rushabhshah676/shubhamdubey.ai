use SalesDB

-- Step 1: Find the total Sales Per Customer (Standalone CTE)
With CTE_Total_Sales as
(
select
CustomerID,
Sum(Sales) as TotalSales
* from Sales.Orders
group by Order_Id


-- Step 2: Find the last order date  for each customer (Standlone CTE)

CTE_Last_Order as
(
select
CustomerID,
MAX(OrderDate) as TotalSales 


)


-- Step 3: Find the last order date  for each customer (Standlone CTE)

CTE_Last_Rank as
(
select
CustomerID,
TotalSales,
Rank() over (order by TotalSales DESC) as CustomerRank
from 
CTE_Total_Sales
)


-- Step 4: Find the last order date  for each customer (Standlone CTE)
CTE_Customer_Segment as
( 
select
	CustomerID,
	TotalSales,
	CASE
		WHEN TotalSales > 100 THEN 'High'
		WHEN TotalSales > 80 THEN 'Medium'
		ELSE 'Low'
	END as CustomerSegments
	from CTE_Total_Sales
)

--Main Query
select
c.CustomerID,
c.FirstName,
c.LastName,
cts.TotalSales,
clo.Last_Order,
crr.CustomerRank,
ccs.CustomerSagments
from Sales.Customers as c
LEFT JOIN CTE_Total_Sales as cts
ON cts.CustomerID = c.CustomerID
LEFT JOIN CTE_Last_Order as clo,
ON clo.CustomerID = c.CustomerID
LEFT JOIN CTE_Customer_Rank as crr
ON crr.CustomerID = c.CustomerID
LEFT JOIN CTE_Customer_Segments as ccs
ON ccs.CustomerID = c.CustomerID;









