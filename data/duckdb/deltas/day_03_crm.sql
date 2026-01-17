-- jaffle_crm Day 3 delta changes
-- Simulates marketing activity on Day 3 (final delta)

-- Add 8 final email activity records
INSERT INTO jaffle_crm.email_activity (activity_id, customer_id, campaign_id, sent_date, opened, clicked, created_at, updated_at, deleted_at) VALUES
(24, 10, 3, CURRENT_DATE, true, true, CURRENT_DATE, CURRENT_DATE, NULL),
(25, 11, 3, CURRENT_DATE, true, false, CURRENT_DATE, CURRENT_DATE, NULL),
(26, 9, 2, CURRENT_DATE, true, true, CURRENT_DATE, CURRENT_DATE, NULL),
(27, 8, 3, CURRENT_DATE, false, false, CURRENT_DATE, CURRENT_DATE, NULL),
(28, 7, 3, CURRENT_DATE, true, true, CURRENT_DATE, CURRENT_DATE, NULL),
(29, 6, 3, CURRENT_DATE, true, true, CURRENT_DATE, CURRENT_DATE, NULL),
(30, 5, 3, CURRENT_DATE, true, false, CURRENT_DATE, CURRENT_DATE, NULL),
(31, 1, 2, CURRENT_DATE, false, false, CURRENT_DATE, CURRENT_DATE, NULL);

-- Add 5 final web sessions
INSERT INTO jaffle_crm.web_sessions (session_id, customer_id, session_start, session_end, page_views, created_at, updated_at, deleted_at) VALUES
(17, 10, CURRENT_DATE, CURRENT_DATE, 16, CURRENT_DATE, CURRENT_DATE, NULL),
(18, 11, CURRENT_DATE, CURRENT_DATE, 5, CURRENT_DATE, CURRENT_DATE, NULL),
(19, 1, CURRENT_DATE, CURRENT_DATE, 13, CURRENT_DATE, CURRENT_DATE, NULL),
(20, 5, CURRENT_DATE, CURRENT_DATE, 9, CURRENT_DATE, CURRENT_DATE, NULL),
(21, 9, CURRENT_DATE, CURRENT_DATE, 21, CURRENT_DATE, CURRENT_DATE, NULL);
