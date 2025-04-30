-- Total number of orders and Revenue by order_status
SSELECT 
  order_status,
  COUNT(*) AS total_orders,
  SUM(order_amount) AS total_revenue
FROM customer_orders
GROUP BY order_status
ORDER BY total_orders DESC;
/*   order_status  total_orders
  order_status  total_orders  total_revenue
0      pending          5069     1278400.04
1    delivered          5057     1284616.01
2      shipped          4874     1245883.14
*/


-- Total Revenue and average order
SELECT 
  COUNT(*) AS total_orders,
  SUM(order_amount) AS total_revenue,
  AVG(order_amount) AS average_order_value
FROM customer_orders;

/*
   total_orders  total_revenue  average_order_value
0         15000     3808899.19           253.926613
*/


-- Number of order which is not delivered
 SELECT 
  order_status,
  COUNT(*) AS num_orders
FROM customer_orders
WHERE order_status NOT IN ('Completed', 'Fulfilled')
GROUP BY order_status;

 /*order_status  num_orders
  order_status  num_orders
0      pending        5069
1      shipped        4874
*/
