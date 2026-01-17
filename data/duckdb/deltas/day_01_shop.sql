-- jaffle_shop Day 1 delta changes
-- Simulates business activity on Day 1 after baseline

-- Add 2 new customers
INSERT INTO jaffle_shop.customers (customer_id, first_name, last_name, email, created_at, updated_at, deleted_at) VALUES
(6, 'Stanley', 'Hudson', 'stanley.hudson@dundermifflin.com', CURRENT_DATE, CURRENT_DATE, NULL),
(7, 'Angela', 'Martin', 'angela.martin@dundermifflin.com', CURRENT_DATE, CURRENT_DATE, NULL);

-- Add 7 new orders from various customers
INSERT INTO jaffle_shop.orders (order_id, customer_id, order_date, status, created_at, updated_at, deleted_at) VALUES
-- New customer orders
(6, 6, CURRENT_DATE, 'pending', CURRENT_DATE, CURRENT_DATE, NULL),
(7, 7, CURRENT_DATE, 'pending', CURRENT_DATE, CURRENT_DATE, NULL),
-- Repeat customers
(8, 1, CURRENT_DATE, 'completed', CURRENT_DATE, CURRENT_DATE, NULL),
(9, 2, CURRENT_DATE, 'pending', CURRENT_DATE, CURRENT_DATE, NULL),
(10, 3, CURRENT_DATE, 'completed', CURRENT_DATE, CURRENT_DATE, NULL),
(11, 4, CURRENT_DATE, 'pending', CURRENT_DATE, CURRENT_DATE, NULL),
(12, 5, CURRENT_DATE, 'completed', CURRENT_DATE, CURRENT_DATE, NULL);

-- Add order items for new orders
INSERT INTO jaffle_shop.order_items (order_item_id, order_id, product_id, quantity, unit_price, created_at, updated_at, deleted_at) VALUES
-- Order 6 items
(6, 6, 2, 1, 29.99, CURRENT_DATE, CURRENT_DATE, NULL),
(7, 6, 3, 1, 79.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 7 items
(8, 7, 4, 1, 299.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 8 items
(9, 8, 1, 1, 999.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 9 items
(10, 9, 5, 2, 199.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 10 items
(11, 10, 2, 3, 29.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 11 items
(12, 11, 3, 1, 79.99, CURRENT_DATE, CURRENT_DATE, NULL),
(13, 11, 4, 1, 299.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 12 items
(14, 12, 1, 1, 999.99, CURRENT_DATE, CURRENT_DATE, NULL),
(15, 12, 2, 1, 29.99, CURRENT_DATE, CURRENT_DATE, NULL);

-- Update order 3 from pending to completed (from baseline)
UPDATE jaffle_shop.orders
SET status = 'completed',
    updated_at = CURRENT_DATE
WHERE order_id = 3;
