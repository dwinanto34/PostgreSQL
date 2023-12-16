
-- Create tables
CREATE TABLE IF NOT EXISTS products (
	id VARCHAR(36) NOT NULL,
	name VARCHAR(255) NOT NULL,
	description TEXT,
	price NUMERIC(10, 4),
	available_stock INT,
	PRIMARY KEY (id)	
);

CREATE TABLE IF NOT EXISTS orders (
	id VARCHAR(36) NOT NULL,
	order_id VARCHAR(20) NOT NULL,
	order_date TIMESTAMP NOT NULL,
	amount NUMERIC(10, 4),
	order_status VARCHAR(50),
	PRIMARY KEY (id),
	UNIQUE (order_id)
);

CREATE TABLE IF NOT EXISTS order_items (
	id VARCHAR(36) NOT NULL,
	order_id VARCHAR(20) NOT NULL,
	order_item_id VARCHAR(20) NOT NULL,
	product_id VARCHAR(36) NOT NULL,
	price_per_qty NUMERIC(10, 4),
	quantity INT,
	shipping_cost NUMERIC(10, 4),
	discount NUMERIC(10, 4),
	item_final_amount NUMERIC(10, 4),
	PRIMARY KEY (id),
	UNIQUE (order_item_id),
	CONSTRAINT fk_order_items_orders FOREIGN KEY (order_id) REFERENCES orders (order_id) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT fk_order_items_products FOREIGN KEY (product_id) REFERENCES products (id) ON DELETE NO ACTION ON UPDATE NO ACTION	
);


-- Drop tables
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS orders;
