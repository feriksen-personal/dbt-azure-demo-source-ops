-- Truncate all jaffle_crm tables
-- Order matters: delete child tables before parent tables to avoid FK constraint errors

-- Delete email activity first (has FK to campaigns)
DELETE FROM jaffle_crm.email_activity;

-- Delete web sessions (no FK dependencies)
DELETE FROM jaffle_crm.web_sessions;

-- Delete campaigns last (was referenced by email_activity)
DELETE FROM jaffle_crm.campaigns;
