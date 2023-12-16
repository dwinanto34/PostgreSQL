
-- Create index on products table
CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_products_name ON products (name);

-- Drop index on products table
DROP INDEX CONCURRENTLY IF EXISTS idx_products_name;

-- Create indexes on order_items table
CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_order_items_order_id ON order_items (order_id);
CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_order_items_order_item_id ON order_items (order_item_id);
CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_order_items_product_id ON order_items (product_id);

-- Drop indexes on order_items table
DROP INDEX CONCURRENTLY IF EXISTS idx_order_items_order_id;
DROP INDEX CONCURRENTLY IF EXISTS idx_order_items_order_item_id;
DROP INDEX CONCURRENTLY IF EXISTS idx_order_items_product_id;
