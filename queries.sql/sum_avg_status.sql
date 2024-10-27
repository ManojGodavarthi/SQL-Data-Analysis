SELECT STATUS,ROUND(SUM(Sales)) AS TotalSales,ROUND(AVG(Sales)) AS AverageSales 
FROM sales_data_sample 
GROUP BY STATUS;