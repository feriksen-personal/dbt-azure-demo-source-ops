-- jaffle_shop Day 3 delta changes
-- Simulates business activity on Day 3 (final delta)

-- Add final 2 customers
INSERT INTO jaffle_shop.customers (customer_id, first_name, last_name, email, created_at, updated_at, deleted_at) VALUES
(10, 'Phyllis', 'Vance', 'phyllis.vance@dundermifflin.com', CURRENT_DATE, CURRENT_DATE, NULL),
(11, 'Creed', 'Bratton', 'creed.bratton@dundermifflin.com', CURRENT_DATE, CURRENT_DATE, NULL);

-- Add 6 final orders
INSERT INTO jaffle_shop.orders (order_id, customer_id, order_date, status, created_at, updated_at, deleted_at) VALUES
(21, 10, CURRENT_DATE, 'pending', CURRENT_DATE, CURRENT_DATE, NULL),
(22, 11, CURRENT_DATE, 'completed', CURRENT_DATE, CURRENT_DATE, NULL),
(23, 8, CURRENT_DATE, 'pending', CURRENT_DATE, CURRENT_DATE, NULL),
(24, 9, CURRENT_DATE, 'completed', CURRENT_DATE, CURRENT_DATE, NULL),
(25, 5, CURRENT_DATE, 'pending', CURRENT_DATE, CURRENT_DATE, NULL),
(26, 6, CURRENT_DATE, 'cancelled', CURRENT_DATE, CURRENT_DATE, NULL);

-- Add order items
INSERT INTO jaffle_shop.order_items (order_item_id, order_id, product_id, quantity, unit_price, created_at, updated_at, deleted_at) VALUES
-- Order 21 items
(27, 21, 3, 1, 79.99, CURRENT_DATE, CURRENT_DATE, NULL),
(28, 21, 4, 1, 299.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 22 items
(29, 22, 5, 1, 199.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 23 items
(30, 23, 1, 1, 1099.99, CURRENT_DATE, CURRENT_DATE, NULL),
(31, 23, 2, 2, 34.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 24 items
(32, 24, 4, 2, 299.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 25 items
(33, 25, 2, 1, 34.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 26 items (cancelled order)
(34, 26, 1, 1, 1099.99, CURRENT_DATE, CURRENT_DATE, NULL);

-- Complete orders from Day 2
UPDATE jaffle_shop.orders
SET status = 'completed',
    updated_at = CURRENT_DATE
WHERE order_id IN (13, 14, 17, 19);

-- Cancel 1 old pending order
UPDATE jaffle_shop.orders
SET status = 'cancelled',
    updated_at = CURRENT_DATE
WHERE order_id = 9;
