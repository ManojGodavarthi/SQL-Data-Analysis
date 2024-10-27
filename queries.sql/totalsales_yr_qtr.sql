SELECT YEAR_ID,QTR_ID, ROUND(SUM(SALES),2) AS TotalSales, ROUND(AVG(SALES),2) AS AverageSales 
FROM sales_data_sample 
GROUP BY YEAR_ID,QTR_ID order by TotalSales DESC;