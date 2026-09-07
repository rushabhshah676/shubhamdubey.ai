use SalesDB

select
DATENAME(MONTH, Order_Date) as Timing,
COUNT(*) as Orders
from dbo.[Orders (1)]
group by DATENAME(MONTH, Order_Date), MONTH(Order_Date)
order by MONTH(Order_Date)



-----------------------------------------------------------------------

--Null Values

-------------------------To Replace Null-------------------------------

select * from Sales.Customers


-- 1. isnull

select AVG(score) from Sales.Customers

select ISNULL(score, 0) from Sales.Customers

select AVG(ISNULL(score, 0)) from Sales.Customers

update Sales.Customers
set FirstName = 'Marry'
where CustomerID = 3

select * from Sales.Customers
select ISNULL(FirstName, LastName) as FirstName from Sales.Customers


/* Task 2:
   Display The Full Name Of Customers In A Single Field By Merging Their
   First And Last Names, And Add 10 Bonus Points To Each Customer's Score.
*/

use SalesDB

select * from Sales.Customers
select
	CustomerID,
	FirstName,
	LastName,
	FirstName + ' ' + Coalesce(LastName, '') as FullName,
	Score,
	Coalesce(Score, 0) + 10 as ScoreWithBonus
	from Sales.Customers;


/*  Task 3:
	Sort The Customers From Lowest To Highest Scores,
	With Null Values Appearing Last.
*/

select
FirstName,
Score,
from Sales.Customers
order by Case
when Score is Null then 1
else 0
End, Score


/*  Task 4:
	Find The Sales Price For Each Order By Dividing Sales By Quantity.
	Uses NULLIF To Avoid Division By Zero.
*/

Use SalesDB

select
	OrderID,
	Sales,
	Quantity,
	Sales/NULLIF(Quantity, 0) as Price
from Sales.Orders










--2. Coalesce

select Coalesce 













