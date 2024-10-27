SELECT YEAR_ID, ROUND(SUM(SALES),2) AS TotalSales, ROUND(AVG(SALES)) AS AverageSales  
FROM sales_data_sample 
GROUP BY YEAR_ID 
ORDER BY TotalSales DESC;