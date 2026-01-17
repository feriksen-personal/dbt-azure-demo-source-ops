-- jaffle_crm Day 2 delta changes
-- Simulates marketing activity on Day 2

-- Add 10 new email activity records
INSERT INTO jaffle_crm.email_activity (activity_id, customer_id, campaign_id, sent_date, opened, clicked, created_at, updated_at, deleted_at) VALUES
(14, 8, 3, CURRENT_DATE, true, true, CURRENT_DATE, CURRENT_DATE, NULL),
(15, 9, 3, CURRENT_DATE, true, false, CURRENT_DATE, CURRENT_DATE, NULL),
(16, 7, 2, CURRENT_DATE, true, true, CURRENT_DATE, CURRENT_DATE, NULL),
(17, 6, 2, CURRENT_DATE, false, false, CURRENT_DATE, CURRENT_DATE, NULL),
(18, 1, 3, CURRENT_DATE, true, true, CURRENT_DATE, CURRENT_DATE, NULL),
(19, 2, 3, CURRENT_DATE, true, false, CURRENT_DATE, CURRENT_DATE, NULL),
(20, 3, 2, CURRENT_DATE, true, true, CURRENT_DATE, CURRENT_DATE, NULL),
(21, 4, 3, CURRENT_DATE, true, true, CURRENT_DATE, CURRENT_DATE, NULL),
(22, 5, 2, CURRENT_DATE, false, false, CURRENT_DATE, CURRENT_DATE, NULL),
(23, 8, 2, CURRENT_DATE, true, false, CURRENT_DATE, CURRENT_DATE, NULL);

-- Add 6 new web sessions
INSERT INTO jaffle_crm.web_sessions (session_id, customer_id, session_start, session_end, page_views, created_at, updated_at, deleted_at) VALUES
(11, 8, CURRENT_DATE, CURRENT_DATE, 14, CURRENT_DATE, CURRENT_DATE, NULL),
(12, 9, CURRENT_DATE, CURRENT_DATE, 9, CURRENT_DATE, CURRENT_DATE, NULL),
(13, 2, CURRENT_DATE, CURRENT_DATE, 18, CURRENT_DATE, CURRENT_DATE, NULL),
(14, 4, CURRENT_DATE, CURRENT_DATE, 7, CURRENT_DATE, CURRENT_DATE, NULL),
(15, 6, CURRENT_DATE, CURRENT_DATE, 25, CURRENT_DATE, CURRENT_DATE, NULL),
(16, 7, CURRENT_DATE, CURRENT_DATE, 11, CURRENT_DATE, CURRENT_DATE, NULL);
