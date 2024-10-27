# SQL Data Analysis on sales data sample

## Objective:
Perform basic data analysis on the "sales data sample" dataset using SQL

### Prerequisites:
- MYSQL Database installed locally.

### Setup Instructions:
1. Install MySQL from https://www.mysql.com/downloads/
2. Create a database using the following SQL command:
    ```sql
    CREATE DATABASE sales;
    ```
3. Import Data via Table Data Import Wizard
	Open MySQL Database and select your database
	Right-click on the Tables section under the Sales database in Schema View
	Select Table Data Import Wizard
	Browse to select the downloaded CSV file from Kaggle dataset
	Follow the instruction to map CSV columns to the table columns, and complete the import

### SQL Queries:
- Count the total number of records in the dataset:
	SELECT COUNT(*) AS total_records FROM sales_data_sample;

- Calculate the total and average sales:
	SELECT ROUND(SUM(SALES)) AS Total_sales, ROUND(AVG(SALES)) AS Average_sales 
	FROM sales_data_sample;
    
-  Calculate total and average sales grouped by each YEAR_ID and ordered by total sales (descending):
	SELECT YEAR_ID, ROUND(SUM(SALES),2) AS TotalSales, ROUND(AVG(SALES)) AS AverageSales  
	FROM sales_data_sample 
	GROUP BY YEAR_ID ORDER BY TotalSales DESC;

- Calculate total and average sales grouped by each STATUS:
	SELECT STATUS,ROUND(SUM(Sales)) AS TotalSales,ROUND(AVG(Sales)) AS AverageSales 
	FROM sales_data_sample 
	GROUP BY STATUS;

- Calculate total and average sales grouped by both YEAR_ID and QTR_ID and ordered by total sales (descending):
	SELECT YEAR_ID,QTR_ID, ROUND(SUM(SALES),2) AS TotalSales, ROUND(AVG(SALES),2) AS AverageSales 
	FROM sales_data_sample 
	GROUP BY YEAR_ID,QTR_ID order by TotalSales DESC;

- Calculate total sales for each PRODUCTLINE:
	SELECT PRODUCTLINE,ROUND(SUM(SALES)) AS product_sales 
	FROM sales_data_sample 
	GROUP BY PRODUCTLINE ORDER BY product_sales DESC;

- Calculate total sales for each COUNTRY:
	SELECT COUNTRY,ROUND(SUM(SALES)) AS total_sales 
	FROM sales_data_sample 
	GROUP BY COUNTRY 
	ORDER BY total_sales DESC;

- Calculate total quantity for each COUNTRY and order by quantity (descending):
	SELECT COUNTRY,SUM(QUANTITYORDERED) AS Quantity 
	FROM sales_data_sample
	GROUP BY COUNTRY ORDER BY Quantity DESC;

- Retrieve all records where COUNTRY is "USA":
	select * from sales_data_sample where COUNTRY  = "USA";

- Retrieve all records where STATUS is "Shipped":
	SELECT * FROM sales_data_sample WHERE STATUS = 'Shipped';

- Retrieve all records where SALES value is greater than 3000:
	SELECT * FROM sales_data_sample WHERE SALES>3000;

### Results:
Results for each query can be found in the `results/` folder.