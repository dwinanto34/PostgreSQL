
-- TRANSACTION 1 -- Terminal 1
BEGIN TRANSACTION;

  -- Execution #1
	UPDATE products
	SET available_stock = available_stock - 3
	WHERE id = 'be26640e-e242-43a0-91c0-fb285864729b';
	
  -- Execution #3
	UPDATE orders 
	SET order_status = 'PAID' 
	WHERE order_id = '10005';
	
COMMIT;


-- TRANSACTION 2 -- Terminal 2
BEGIN TRANSACTION;

  -- Execution #2
	UPDATE orders 
	SET order_status = 'REFUNDED' 
	WHERE order_id = '10005';
	
  -- Execution #4 deadlock happens
	UPDATE products
	SET available_stock = available_stock + 3
	WHERE id = 'be26640e-e242-43a0-91c0-fb285864729b';

COMMIT;

