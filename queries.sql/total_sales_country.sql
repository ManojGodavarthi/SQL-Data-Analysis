SELECT COUNTRY,ROUND(SUM(SALES)) AS total_sales 
FROM sales_data_sample 
GROUP BY COUNTRY 
ORDER BY total_sales DESC;