-- Number of failed payment but order is shipped 
SELECT 
  COUNT(co.order_id) AS total_pending_failed_orders,
  SUM(co.order_amount) AS total_amount,
  AVG(co.order_amount) AS average_amount
FROM customer_orders co
JOIN payments p ON co.order_id = p.order_id
WHERE co.order_status = 'shipped'
  AND p.payment_status = 'failed';

/*   total_pending_failed_orders  total_amount  average_amount
0                         1655     422144.86      255.072423
*/

-- Number of failed payment and order is pending
SELECT 
  COUNT(co.order_id) AS total_pending_failed_orders,
  SUM(co.order_amount) AS total_amount,
  AVG(co.order_amount) AS average_amount
FROM customer_orders co
JOIN payments p ON co.order_id = p.order_id
WHERE co.order_status = 'pending'
  AND p.payment_status = 'failed';

/* 
   total_pending_failed_orders  total_amount  average_amount
0                         1649     419222.81      254.228508
*/


-- Number of failed payment but order is delivered
SELECT 
  COUNT(co.order_id) AS total_pending_failed_orders,
  SUM(co.order_amount) AS total_amount,
  AVG(co.order_amount) AS average_amount
FROM customer_orders co
JOIN payments p ON co.order_id = p.order_id
WHERE co.order_status = 'delivered'
  AND p.payment_status = 'failed';

/*
  total_failed_payment_order  total_amount  average_amount
0                         1699     432087.83      254.318911
*/