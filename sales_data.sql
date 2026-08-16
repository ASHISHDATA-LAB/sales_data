#creating databases
create database ecommerce;
use ecommerce;

#chech ful table
SELECT 
    *
FROM
    orders;
# total orders
SELECT 
    COUNT(*) AS total_orders
FROM
    orders;
#calculate the total sales
SELECT 
    SUM(net_sales) AS total_sales
FROM
    orders;
#total sales by product
SELECT 
    product, SUM(net_sales) AS sales
FROM
    orders
GROUP BY product
ORDER BY sales DESC;
#total sales by city
SELECT 
    city, SUM(net_sales) AS sales
FROM
    orders
GROUP BY city
ORDER BY sales DESC;
# total sales by month
SELECT 
    order_month, SUM(net_sales) AS sales
FROM
    orders
GROUP BY order_month
ORDER BY sales DESC;
#total profit by product
SELECT 
    product, SUM(profit) AS total_profit
FROM
    orders
GROUP BY product
ORDER BY total_profit DESC;
#total order by payment mode
SELECT 
    payment_mode, COUNT(*) AS total_count
FROM
    orders
GROUP BY payment_mode
ORDER BY total_count DESC;
#total cancel order
SELECT 
    COUNT(order_status) AS total_cancel_order
FROM
    orders
WHERE
    order_status = 'cancelled';