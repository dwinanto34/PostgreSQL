-- INITIAL CONDITION
-- Set the initial available_stock to 10 for the product with ID 'be26640e-e242-43a0-91c0-fb285864729b'
UPDATE products
SET available_stock = 10
WHERE id = 'be26640e-e242-43a0-91c0-fb285864729b';

-- TRANSACTION #1 -- Terminal 1
-- Begin Transaction #1
BEGIN TRANSACTION;

  -- Execution #1
  -- Acquire a lock on the selected row for the product with ID 'be26640e-e242-43a0-91c0-fb285864729b'
  SELECT available_stock
  FROM products
  WHERE id = 'be26640e-e242-43a0-91c0-fb285864729b'
  FOR UPDATE;

  -- Execution #3
  -- Update the product's available_stock by subtracting 5
  UPDATE products
  SET available_stock = available_stock - 5
  WHERE id = 'be26640e-e242-43a0-91c0-fb285864729b';

-- Commit Transaction #1
COMMIT;

-- TRANSACTION #2 -- Terminal 2
-- Begin Transaction #2
BEGIN TRANSACTION;

  -- Execution #2
  -- Will wait until Transaction #1 is committed to acquire the lock
  SELECT available_stock
  FROM products
  WHERE id = 'be26640e-e242-43a0-91c0-fb285864729b'
  FOR UPDATE;

  -- Execution #4
  -- Update the product's available_stock by subtracting 5
  UPDATE products
  SET available_stock = available_stock - 5
  WHERE id = 'be26640e-e242-43a0-91c0-fb285864729b';

-- Commit Transaction #2
COMMIT;

-- FINAL CONDITION
-- Verify that the available_stock is 0 for the product with ID 'be26640e-e242-43a0-91c0-fb285864729b'
SELECT available_stock
FROM products
WHERE id = 'be26640e-e242-43a0-91c0-fb285864729b';