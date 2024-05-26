select * from pizza_analysis.pizza_sales;
select cast(sum(total_price) as decimal(10,2)) as Total_revenue from pizza_sales;
select (sum(total_price)/count(distinct order_id)) as Avg_order_value from pizza_sales;
select sum(quantity) as Total_pizza_sold from pizza_sales;
select count(distinct order_id) as Total_orders from pizza_sales;
select cast(cast(sum(quantity) as decimal(10,2))/cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2))
as Avg_Pizzas_per_order
from pizza_sales;
SELECT dayname(order_date) AS order_day, COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales
GROUP BY dayname(order_date);
select pizza_category, cast(sum(total_price) as decimal(10,2)) as total_revenue,
cast(sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as decimal(10,2)) as PCT
from pizza_sales
group by pizza_category;
select pizza_size, cast(sum(total_price) as decimal(10,2)) as total_revenue,
cast(sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as decimal(10,2)) as PCT
from pizza_sales
group by pizza_size
order by pizza_size;
select  pizza_category, sum(quantity) as Total_Quantity_Sold from pizza_sales where month(order_date) = 2 group by pizza_category order by Total_Quantity_Sold desc;
SELECT pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue DESC
LIMIT 5;
SELECT pizza_name, SUM(total_price) AS Total_Revenue
FROM pizza_sales 
GROUP BY pizza_name
ORDER BY Total_Revenue ASC
limit 5;
select pizza_name, sum(quantity) as Total_Pizza_Sold
from pizza_sales
group by pizza_name
order by Total_Pizza_Sold DESC
limit 5;
SELECT pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC
limit 5;





