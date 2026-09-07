use SalesDB
/* Task 6:
How Many Orders Were Placed Each Month?
*/

Select
FORMAT(Order_Date, 'MMMM'),
COUNT(*)
from dbo.[Orders (1)]
group by FORMAT(Order_Date,'MMMM')







