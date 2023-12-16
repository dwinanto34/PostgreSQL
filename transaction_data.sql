
-- ORDER TRANSACTION #1
BEGIN TRANSACTION;

  INSERT INTO orders(id, order_id, order_date, amount, order_status)
  VALUES ('8d6571b6-7d35-4afe-92be-516ad3c1e33a', '10001', NOW(), 41, 'CANCELLED');

  INSERT INTO order_items (id, order_id, order_item_id, product_id, price_per_qty, quantity, shipping_cost, discount, item_final_amount)
  VALUES 
  ('4599cf30-380a-47e3-abb0-e803e1e943c0', '10001', '30001', '77cf3e11-c647-4aa9-81f2-460ae6a2fb3f', 5.5, 4, 4.1, 2.5, 23.6),
  ('5f2c58a6-0ae1-458b-b53c-9feefdeaa79d', '10001', '30002', '664235dc-be44-472c-b9f4-aca3bdc2763b', 5.0, 3, 3.0, 0.6, 17.4);

  UPDATE products
  SET available_stock = available_stock - 4
  WHERE id = '77cf3e11-c647-4aa9-81f2-460ae6a2fb3f';

  UPDATE products
  SET available_stock = available_stock - 3
  WHERE id = '664235dc-be44-472c-b9f4-aca3bdc2763b';

COMMIT;


-- ORDER TRANSACTION #2
BEGIN TRANSACTION;

  INSERT INTO orders(id, order_id, order_date, amount, order_status)
  VALUES ('461ef022-ce9c-455c-b874-a6266f1857de', '10002', NOW(), 14.1, 'PAID');

  INSERT INTO order_items (id, order_id, order_item_id, product_id, price_per_qty, quantity, shipping_cost, discount, item_final_amount)
  VALUES ('ceca132e-6950-4546-b9ad-df45437806cb', '10002', '30003', 'be26640e-e242-43a0-91c0-fb285864729b', 4.0, 3, 2.1, 0.0, 14.1);

  UPDATE products
  SET available_stock = available_stock - 3
  WHERE id = 'be26640e-e242-43a0-91c0-fb285864729b';

COMMIT;


-- ORDER TRANSACTION #3
BEGIN TRANSACTION;

  INSERT INTO orders(id, order_id, order_date, amount, order_status)
  VALUES ('d387839b-f262-4eb5-bbdf-771da0ab9808', '10003', NOW(), 13, 'PAID');

  INSERT INTO order_items (id, order_id, order_item_id, product_id, price_per_qty, quantity, shipping_cost, discount, item_final_amount)
  VALUES 
  ('dab4fda0-fd53-4718-bb78-7ab65b381304', '10003', '30004', '74f8458f-1814-470e-811a-760232c5f146', 3.0, 1, 4.1, 0.7, 6.4),
  ('22b8d15e-5c88-4992-98c5-503a95707a2a', '10003', '30005', '1fba01a9-43e7-41a0-b50a-6054a633dd73', 2.0, 2, 3.0, 0.4, 6.6);

  UPDATE products
  SET available_stock = available_stock - 1
  WHERE id = '74f8458f-1814-470e-811a-760232c5f146';

  UPDATE products
  SET available_stock = available_stock - 2
  WHERE id = '1fba01a9-43e7-41a0-b50a-6054a633dd73';

COMMIT;


-- ORDER TRANSACTION #4
BEGIN TRANSACTION;

  INSERT INTO orders(id, order_id, order_date, amount, order_status)
  VALUES ('b5e04487-719f-4163-8368-a232b953f00a', '10004', NOW(), 27.6, 'PAID');

  INSERT INTO order_items (id, order_id, order_item_id, product_id, price_per_qty, quantity, shipping_cost, discount, item_final_amount)
  VALUES ('13c23ae6-c030-4593-ada1-0759ab608dcb', '10004', '30006', '664235dc-be44-472c-b9f4-aca3bdc2763b', 5.0, 5, 3.0, 0.4, 27.6);

  UPDATE products
  SET available_stock = available_stock - 5
  WHERE id = '664235dc-be44-472c-b9f4-aca3bdc2763b';

COMMIT;


-- ORDER TRANSACTION #5
BEGIN TRANSACTION;

  INSERT INTO orders(id, order_id, order_date, amount, order_status)
  VALUES ('9343212f-493e-43d9-b1d0-9eedc2c87214', '10005', NOW(), 35.6, 'WAITING_FOR_PAYMENT');

  INSERT INTO order_items (id, order_id, order_item_id, product_id, price_per_qty, quantity, shipping_cost, discount, item_final_amount)
  VALUES ('13c80bf3-f6bf-4316-b9c0-28b51fa950c6', '10005', '30007', '77cf3e11-c647-4aa9-81f2-460ae6a2fb3f', 5.5, 6, 3.0, 0.4, 35.6);

  UPDATE products
  SET available_stock = available_stock - 6
  WHERE id = '77cf3e11-c647-4aa9-81f2-460ae6a2fb3f';

COMMIT;


-- ORDER TRANSACTION #6
BEGIN TRANSACTION;

  INSERT INTO orders(id, order_id, order_date, amount, order_status)
  VALUES ('54c5b36a-b625-4f55-88d4-f41ac0294af4', '10006', NOW(), 14.6, 'WAITING_FOR_PAYMENT');

  INSERT INTO order_items (id, order_id, order_item_id, product_id, price_per_qty, quantity, shipping_cost, discount, item_final_amount)
  VALUES ('0bdb730d-072b-4fc8-bd68-537f52a7938f', '10006', '30008', 'be26640e-e242-43a0-91c0-fb285864729b', 4.0, 3, 3.0, 0.4, 14.6);

  UPDATE products
  SET available_stock = available_stock - 3
  WHERE id = 'be26640e-e242-43a0-91c0-fb285864729b';

COMMIT;


-- ORDER TRANSACTION #7
BEGIN TRANSACTION;

  INSERT INTO orders(id, order_id, order_date, amount, order_status)
  VALUES ('44bdc145-bf54-4d49-a93a-f8a250900bc3', '10007', NOW(), 10.6, 'REFUNDED');

  INSERT INTO order_items (id, order_id, order_item_id, product_id, price_per_qty, quantity, shipping_cost, discount, item_final_amount)
  VALUES ('a1c34916-e1bb-4ce9-8c01-19d81d8ffa58', '10007', '30009', 'be26640e-e242-43a0-91c0-fb285864729b', 4.0, 2, 3.0, 0.4, 10.6);

  UPDATE products
  SET available_stock = available_stock - 2
  WHERE id = 'be26640e-e242-43a0-91c0-fb285864729b';

COMMIT;

