
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

-- SOLUTION

-- 1. Global resource ordering
-- Establish a global order for acquiring resources. In the given example, ensure that
-- transactions consistently acquire locks on the 'products' and 'orders' tables in the same order.
-- If transaction #2 had the same order of updating 'products' and then 'orders', deadlocks would
-- be less likely to occur.

-- 2. Optimize Database Performance
-- Maintain a high-performance database to minimize the likelihood of deadlocks. High-performance
-- databases reduce the duration of locks, decreasing the probability of encountering deadlocks.

-- 3. Timeout
-- Implement timeouts for database operations to prevent indefinite waiting. Set reasonable
-- timeouts for each operation to avoid prolonged periods of lock-holding. If an operation
-- cannot acquire the necessary locks within the specified timeout period,
-- release the locks to prevent potential deadlocks.

