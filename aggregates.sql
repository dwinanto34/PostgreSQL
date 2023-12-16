
-- QUERY #1 -- Retrieve statistical information (average, min, max, and count) per date and order status
SELECT
  AVG(amount) AS "average",
  MAX(amount) AS "max",
  MIN(amount) AS "min",
  COUNT(id) AS "count",
  DATE(order_date) AS "order_date",
  order_status
FROM
  orders
WHERE
  DATE(order_date) = '2023-12-17'
GROUP BY
  DATE(order_date), order_status;

