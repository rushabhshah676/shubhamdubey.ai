/*  1. Overall Profitability Analysis
	Calculate the overall **Profit Margin (%)** for the company using the Sales and Profit columns. Based on your calculation, determine whether a **12.47% profit margin** is healthy for a retail business. Justify your answer using appropriate business reasoning and supporting data.
*/

use SalesDB

SELECT
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Percentage
FROM dbo.Orders


/*    2. Category Performance Report
    Create a report showing the following metrics for each product category:

    - Total Sales
    - Total Profit
    - Profit Margin (%)
    - Contribution to Total Revenue (%)
*/

SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Profit) / SUM(Sales) * 100 AS Profit_Margin,
    SUM(Sales) / (SELECT SUM(Sales) FROM Orders) * 100 AS Revenue_Contribution
FROM Orders
GROUP BY Category
ORDER BY Profit_Margin DESC;

/*  3. Technology Category Performance
    The Technology category generates the highest Sales and Profit.
    Analyze the dataset and identify the key factors responsible for Technology outperforming Furniture and Office Supplies. Consider factors such as sales volume, discounting, profitability, and product mix.
*/



/* ### 4. Sub-Category Profitability Matrix
    Create a profitability matrix for all Sub-Categories showing:

    - Total Sales
    - Total Profit
    - Profit Margin (%)

   Identify the Sub-Categories that negatively impact overall company profitability.

*/




