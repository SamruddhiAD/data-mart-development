use sales_order;

SELECT customer_dim.Cust_Name AS 'Customer_Name', SUM(sales_fact.SalesAmount) AS 'Sales' FROM sales_fact
JOIN customer_dim ON customer_dim.Customer_SK = sales_fact.Customer_SK
GROUP BY customer_dim.Cust_Name
ORDER BY SUM(sales_fact.SalesAmount) DESC;