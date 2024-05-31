
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

-- Create unique index on products table
CREATE UNIQUE INDEX CONCURRENTLY IF NOT EXISTS idx_unique_products_name ON products(name);

-- Drop unique indexes on products table
DROP INDEX CONCURRENTLY IF EXISTS idx_unique_products_name;

-- Create compound or composite indexes
CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_products_name_description ON products(name, description);

Queries that benefit from the index above:
- SELECT * FROM products WHERE name = 'name' AND description = 'description';
- SELECT * FROM products WHERE name = 'name';
- SELECT * FROM products WHERE name = 'name' ORDER BY description;

Queries that do not benefit from the index above:
- SELECT * FROM products WHERE description = 'description';
- SELECT * FROM products WHERE description = 'description' ORDER BY name;

-- Drop compound or composite indexes
DROP INDEX CONCURRENTLY IF EXISTS idx_products_name_description;
