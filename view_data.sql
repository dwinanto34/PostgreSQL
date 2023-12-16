
-- QUERY #1 -- Identify orders with matched or mismatched amounts
SELECT
  o.order_id,
  o.amount AS "order_amount",
  DATE(order_date) AS "order_date",
  SUM(oi.item_final_amount) AS "total_item_amount",
  CASE
    WHEN SUM(oi.item_final_amount) = o.amount THEN 'amount matched'
    ELSE 'amount mismatch'
  END AS "status"
FROM
  orders o
INNER JOIN
  order_items oi ON oi.order_id = o.order_id
WHERE
  DATE(order_date) = '2023-12-17'
GROUP BY
  o.order_id, o.amount, DATE(order_date);

-- QUERY #2 -- Retrieve details of orders and their items for a specific date
SELECT
  o.order_id,
  o.order_date,
  o.order_status,
  oi.order_item_id,
  p.name,
  oi.price_per_qty,
  oi.quantity,
  oi.shipping_cost,
  oi.discount,
  oi.item_final_amount
FROM
  orders o
INNER JOIN
  order_items oi ON oi.order_id = o.order_id
INNER JOIN
  products p ON oi.product_id = p.id
WHERE
  DATE(order_date) = '2023-12-17';

