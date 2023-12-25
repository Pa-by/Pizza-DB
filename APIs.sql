select sum (total_price) as Total_Revenue from pizza_sales

Select sum (total_price) / count (distinct order_id) as Average_Order_Value from pizza_sales

select sum (quantity) as Total_pizza_sold from pizza_sales

select count (distinct order_id) as Total_orders from pizza_sales

select cast (cast (sum (quantity) as decimal (10,2)) / 
cast (count (distinct order_id) as decimal (10,2)) as decimal (10,2)) as Average_pizza_per_order from pizza_sales

