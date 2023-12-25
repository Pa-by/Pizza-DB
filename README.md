# Pizza-DB
# Pizza-DB

PIZZA DB

A year's worth of sales records from a hypothetical pizzeria, with information on the kind, size, number, price, and ingredients of each pizza as well as the date and time of each order and the pizzas served.

FOR THE API QUERIES:

select sum (total_price) as Total_Revenue from pizza_sales

Select sum (total_price) / count (distinct order_id) as Average_Order_Value from pizza_sales

select sum (quantity) as Total_pizza_sold from pizza_sales

select count (distinct order_id) as Total_orders from pizza_sales

select cast (cast (sum (quantity) as decimal (10,2)) / 
cast (count (distinct order_id) as decimal (10,2)) as decimal (10,2)) as Average_pizza_per_order from pizza_sales

FOR THE CHART QUERIES: 

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
        
New measure was created to find:

•	Order Date

•	Total Revenue

•	Total Sales

•	Total Pizza Sold




The analysis has 2 pages; Home and Botton/top 5 page.
 
