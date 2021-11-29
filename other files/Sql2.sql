use sales_order;

SELECT customer_dim.CustType,salesdate_dim.Year,salesdate_dim.Quarter,salesdate_dim.Month, SUM(sales_fact.Qty) AS 'Qty', SUM(sales_fact.SalesAmount) AS 'Unit Cost' FROM sales_fact
JOIN customer_dim ON customer_dim.Customer_SK = sales_fact.Customer_SK
JOIN salesdate_dim ON salesdate_dim.SalesDate_SK = sales_fact.SalesDate_SK
GROUP BY customer_dim.CustType,salesdate_dim.Year,salesdate_dim.Quarter,salesdate_dim.Month
ORDER BY customer_dim.CustType;