select datename (DW, order_date) as order_day, count(distinct order_id) as Total_orders
from pizza_sales
group by datename(DW, order_date)

select datename(month, order_date) as Month_Name, count (distinct order_id) as Total_orders
from pizza_sales
group by datename(month, order_date)
order by Total_Orders Desc

select pizza_category, sum (total_price) as Total_sales, sum(total_price)* 100 / (select sum (total_price) from pizza_sales) as PCT
from pizza_sales
group by pizza_category

select pizza_size, sum (total_price) as Total_sales, cast (sum(total_price)* 100 / (select sum (total_price) from pizza_sales)as decimal (10,2 )) as PCT
from pizza_sales
group by pizza_size
order by PCT desc 

select top 5 pizza_name, sum(total_price) as Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue desc


select top 5 pizza_name, sum(total_price) as Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue

 
select top 5 pizza_name, sum(quantity) as Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue desc

select top 5 pizza_name, sum(quantity) as Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue 


select top 5 pizza_name, count(distinct order_id) as Total_Order from pizza_sales
group by pizza_name
order by Total_Order