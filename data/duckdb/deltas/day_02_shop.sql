-- jaffle_shop Day 2 delta changes
-- Simulates business activity on Day 2

-- Add 2 more new customers
INSERT INTO jaffle_shop.customers (customer_id, first_name, last_name, email, created_at, updated_at, deleted_at) VALUES
(8, 'Kevin', 'Malone', 'kevin.malone@dundermifflin.com', CURRENT_DATE, CURRENT_DATE, NULL),
(9, 'Oscar', 'Martinez', 'oscar.martinez@dundermifflin.com', CURRENT_DATE, CURRENT_DATE, NULL);

-- Update product prices (inflation adjustments)
UPDATE jaffle_shop.products
SET price = 34.99,
    updated_at = CURRENT_DATE
WHERE product_id = 2;  -- Mouse price increase

UPDATE jaffle_shop.products
SET price = 1099.99,
    updated_at = CURRENT_DATE
WHERE product_id = 1;  -- Laptop price increase

-- Add 8 new orders
INSERT INTO jaffle_shop.orders (order_id, customer_id, order_date, status, created_at, updated_at, deleted_at) VALUES
(13, 8, CURRENT_DATE, 'pending', CURRENT_DATE, CURRENT_DATE, NULL),
(14, 9, CURRENT_DATE, 'pending', CURRENT_DATE, CURRENT_DATE, NULL),
(15, 6, CURRENT_DATE, 'completed', CURRENT_DATE, CURRENT_DATE, NULL),
(16, 7, CURRENT_DATE, 'completed', CURRENT_DATE, CURRENT_DATE, NULL),
(17, 1, CURRENT_DATE, 'pending', CURRENT_DATE, CURRENT_DATE, NULL),
(18, 2, CURRENT_DATE, 'completed', CURRENT_DATE, CURRENT_DATE, NULL),
(19, 3, CURRENT_DATE, 'pending', CURRENT_DATE, CURRENT_DATE, NULL),
(20, 4, CURRENT_DATE, 'completed', CURRENT_DATE, CURRENT_DATE, NULL);

-- Add order items for new orders
INSERT INTO jaffle_shop.order_items (order_item_id, order_id, product_id, quantity, unit_price, created_at, updated_at, deleted_at) VALUES
-- Order 13 items (new pricing)
(16, 13, 2, 2, 34.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 14 items
(17, 14, 3, 1, 79.99, CURRENT_DATE, CURRENT_DATE, NULL),
(18, 14, 5, 1, 199.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 15 items
(19, 15, 4, 1, 299.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 16 items (new laptop pricing)
(20, 16, 1, 1, 1099.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 17 items
(21, 17, 5, 1, 199.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 18 items
(22, 18, 2, 1, 34.99, CURRENT_DATE, CURRENT_DATE, NULL),
(23, 18, 3, 1, 79.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 19 items
(24, 19, 1, 1, 1099.99, CURRENT_DATE, CURRENT_DATE, NULL),
(25, 19, 4, 1, 299.99, CURRENT_DATE, CURRENT_DATE, NULL),
-- Order 20 items
(26, 20, 5, 2, 199.99, CURRENT_DATE, CURRENT_DATE, NULL);

-- Complete orders from Day 1
UPDATE jaffle_shop.orders
SET status = 'completed',
    updated_at = CURRENT_DATE
WHERE order_id IN (6, 7, 9, 11);
