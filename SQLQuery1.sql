SELECT * from pizza_sales;

SELECT SUM(total_price) as Total_Revenue from pizza_sales;


SELECT CAST(SUM(total_price)/COUNT(DISTINCT order_id) as DECIMAL(10,2)) AS Avg_order_value from pizza_sales;


SELECT SUM(quantity) AS Total_pizzas_sold from pizza_sales;


SELECT COUNT(DISTINCT order_id) AS No_of_orders from pizza_sales;


SELECT CAST(CAST(SUM(quantity) AS DECIMAL (10,2))/CAST(COUNT(DISTINCT order_id) AS DECIMAL (10,2)) AS DECIMAL (10,2))AS Avg_no_of_pizzas_per_order from pizza_sales;


SELECT DATENAME(DW, order_date) AS order_day, COUNT(DISTINCT order_id) AS Total_orders from pizza_sales GROUP BY DATENAME(DW, order_date);


SELECT DATENAME(MONTH, order_date) AS order_month, COUNT(DISTINCT order_id) AS Total_orders from pizza_sales GROUP BY DATENAME(MONTH, order_date);


SELECT DATENAME(hour, order_time) AS order_hour, COUNT(DISTINCT order_id) AS Total_orders from pizza_sales GROUP BY DATENAME(hour, order_time);


SELECT pizza_category,SUM(total_price) AS Total_sales, CAST(SUM(total_price)*100/(SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS Pct_sales_categorically FROM pizza_sales GROUP BY pizza_category;


SELECT pizza_size,SUM(total_price) AS Total_sales, CAST(SUM(total_price)*100/(SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS Pct_sales_by_size FROM pizza_sales GROUP BY pizza_size;


SELECT TOP 5 pizza_name, SUM(total_price) AS Total_revenue from pizza_sales GROUP BY pizza_name ORDER BY Total_revenue DESC;


SELECT TOP 5 pizza_name, SUM(quantity) AS Total_sold from pizza_sales GROUP BY pizza_name ORDER BY Total_sold DESC;


SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_orders from pizza_sales GROUP BY pizza_name ORDER BY Total_orders DESC;


SELECT TOP 5 pizza_name, SUM(total_price) AS Total_revenue from pizza_sales GROUP BY pizza_name ORDER BY Total_revenue;


SELECT TOP 5 pizza_name, SUM(quantity) AS Total_sold from pizza_sales GROUP BY pizza_name ORDER BY Total_sold;


SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS Total_orders from pizza_sales GROUP BY pizza_name ORDER BY Total_orders;


