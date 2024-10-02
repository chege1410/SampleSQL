-- SQL Script to find total sales for each product

SELECT ProductID, Sum(Amount) AS TotalSales
FROM sales
GROUP BY ProductID;


--SQL script to calculate the total sales for each month

SELECT
   DATE_FORMAT(SaleDate, %Y-%m) AS month
   SUM(Amount) AS TotalSales
FROM sales;


--SQL script to identify customers who made more than 5 purchases

SELECT CustomerID, COUNT(SaleID) As PurchaseCount
FROM sales
GROUP BY CustomerID
HAVING COUNT(SaleID) > 5;