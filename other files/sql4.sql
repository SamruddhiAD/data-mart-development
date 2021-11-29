use sales_order;

SELECT product_dim.ProdTypeID,salesdate_dim.Year, SUM(sales_fact.Qty) AS 'Qty', SUM(sales_fact.SalesAmount) AS 'Unit Cost' FROM sales_fact

JOIN salesdate_dim ON salesdate_dim.SalesDate_SK = sales_fact.SalesDate_SK
JOIN product_dim ON product_dim.Product_SK = sales_fact.Product_SK
GROUP BY product_dim.ProdTypeID,salesdate_dim.Year
ORDER BY product_dim.ProdTypeID;