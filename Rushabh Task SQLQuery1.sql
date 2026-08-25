use SalesDB
select
DATETRUNC(YEAR, Order_Date),
COUNT(Order_ID)
from dbo.[Orders (1)]
group by DATETRUNC(YEAR, Order_Date)

select
OrderID,
CreationTime,
EOMONTH(CreationTime)
from Sales.Orders
--------------------------------------------------------------------
select
CreationTime,
MONTH(CreationTime),
DATENAME(MONTH,CreationTime)
from Sales.Orders

select
DATENAME(MONTH, Order_Date) AS MONTHNAME,
COUNT(*) AS ORDERCOUNT
from dbo.[Orders (1)]
group by MONTH(Order_Date), 
DATENAME(MONTH, Order_Date)
Order by MONTH(Order_Date)



select
	OrderID,
	CreationTime,
	FORMAT(CreationTime, 'MM-dd-yyyy') AS USA_Format,
	FORMAT(CreationTime, 'dd-MM-yyyy') AS EURO_Format,
	FORMAT(CreationTime, 'dd') AS dd,
	FORMAT(CreationTime, 'ddd') AS ddd,
	FORMAT(CreationTime, 'dddd') AS dddd,
	FORMAT(CreationTime, 'MM') AS MM,
	FORMAT(CreationTime, 'MMM') AS MMM,
	FORMAT(CreationTime, 'MMMM') AS MMMM
from Sales.Orders;


select
CreationTime, 'Day' + ' ' + 'Wed' + ' ' + 'Jan' + ' ' + 'Q' + DATENAME(quarter, CreationTime)
from Sales.Orders


select
CreationTime, 'Day' + ' ' + FORMAT(CreationTime, 'ddd MMM') + + ' ' + 'Q' + DATENAME(QUARTER,CreationTime) + ' ' + 
FORMAT(CreationTime, 'hh:mm:ss')
from Sales.Orders


select
COUNT(*)
CreationTime, FORMAT(CreationTime, 'MMM yy') + + ' ' + DATENAME(QUARTER,CreationTime)
from Sales.Orders
---------------------------------------------------------------------------------------
select
FORMAT(Order_Date, 'MMM yy'),
COUNT(*)
from dbo.[Orders (1)]
group by FORMAT(Order_Date, 'MMM yy')


---------------------------------------------------------------------------------------------------------------------------------------------------------------------

select
	CONVERT(int, '123') AS [String to Int CONVERT]
	CONVERT(DATE, '2025-08-20') AS [String to DATE CONVERT]
	CreationTime,
	CONVERT(DATE, CreationTime) AS [String to DATE CONVERT]
	CONVERT(VARCHAR, CreationTime, 32) AS [USA Std. Style:32], 
	CONVERT(VARCHAR, CreationTime, 34) AS [EURO Std. Style:34]
from Sales.Orders;
