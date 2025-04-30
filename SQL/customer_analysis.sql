-- Customer who ordered more than 1 time is more loyel
SELECT 
  customer_id,
  COUNT(order_id) AS total_orders,
  SUM(order_amount) AS total_spent,
  AVG(order_amount) AS average_order_value
FROM customer_orders
GROUP BY customer_id
HAVING total_orders > 1
ORDER BY total_orders DESC;

/*
     customer_id  total_orders  total_spent  average_order_value
0            2633             8      1716.54           214.567500
1            9955             7      1724.29           246.327143
2            9476             7      2070.76           295.822857
3            9243             7      1487.40           212.485714
4            8231             7       966.29           138.041429
...           ...           ...          ...                  ...
4397         1013             2       644.18           322.090000
4398         1005             2       432.24           216.120000
4399         1004             2       596.25           298.125000
4400         1003             2       793.47           396.735000
4401         1000             2       306.22           153.110000
*/


-- Number of repeat customer and one-time customer
SELECT 
  customer_type,
  COUNT(*) AS num_customers
FROM (
  SELECT 
    customer_id,
    CASE 
      WHEN COUNT(order_id) = 1 THEN 'One-time'
      ELSE 'Repeat'
    END AS customer_type
  FROM customer_orders
  GROUP BY customer_id
) AS customer_segments
GROUP BY customer_type;

/*
 customer_type  num_customers
0      One-time           2932
1        Repeat           4402
*/


-- Total revenue by repeat customer and one-time customer
WITH customer_class AS (
  SELECT 
    customer_id,
    CASE 
      WHEN COUNT(order_id) = 1 THEN 'One-time'
      ELSE 'Repeat'
    END AS customer_type
  FROM customer_orders
  GROUP BY customer_id
)
SELECT 
  c.customer_type,
  COUNT(co.order_id) AS total_orders,
  SUM(co.order_amount) AS total_revenue
FROM customer_orders co
JOIN customer_class c ON co.customer_id = c.customer_id
GROUP BY c.customer_type;

/*
  customer_type  total_orders  total_revenue
0      One-time          2932      748180.15
1        Repeat         12068     3060719.04
*/