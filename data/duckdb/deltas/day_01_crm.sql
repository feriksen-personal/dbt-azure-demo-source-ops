-- jaffle_crm Day 1 delta changes
-- Simulates marketing activity on Day 1 after baseline

-- Add 8 new email activity records (Flash Deals campaign continues)
INSERT INTO jaffle_crm.email_activity (activity_id, customer_id, campaign_id, sent_date, opened, clicked, created_at, updated_at, deleted_at) VALUES
(6, 6, 2, CURRENT_DATE, true, true, CURRENT_DATE, CURRENT_DATE, NULL),
(7, 7, 2, CURRENT_DATE, true, false, CURRENT_DATE, CURRENT_DATE, NULL),
(8, 1, 3, CURRENT_DATE, true, true, CURRENT_DATE, CURRENT_DATE, NULL),
(9, 2, 3, CURRENT_DATE, false, false, CURRENT_DATE, CURRENT_DATE, NULL),
(10, 3, 3, CURRENT_DATE, true, true, CURRENT_DATE, CURRENT_DATE, NULL),
(11, 4, 2, CURRENT_DATE, true, false, CURRENT_DATE, CURRENT_DATE, NULL),
(12, 5, 3, CURRENT_DATE, true, true, CURRENT_DATE, CURRENT_DATE, NULL),
(13, 6, 3, CURRENT_DATE, true, false, CURRENT_DATE, CURRENT_DATE, NULL);

-- Add 5 new web sessions
INSERT INTO jaffle_crm.web_sessions (session_id, customer_id, session_start, session_end, page_views, created_at, updated_at, deleted_at) VALUES
(6, 6, CURRENT_DATE, CURRENT_DATE, 8, CURRENT_DATE, CURRENT_DATE, NULL),
(7, 7, CURRENT_DATE, CURRENT_DATE, 15, CURRENT_DATE, CURRENT_DATE, NULL),
(8, 1, CURRENT_DATE, CURRENT_DATE, 6, CURRENT_DATE, CURRENT_DATE, NULL),
(9, 3, CURRENT_DATE, CURRENT_DATE, 22, CURRENT_DATE, CURRENT_DATE, NULL),
(10, 5, CURRENT_DATE, CURRENT_DATE, 11, CURRENT_DATE, CURRENT_DATE, NULL);
