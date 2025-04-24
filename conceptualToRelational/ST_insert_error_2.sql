/* Trying to insert rows S and T without using the relationship table */

-- Create relate a new S entity to an existing T entity without updating
-- relate_s_and_t.
INSERT INTO s (fktid, x) VALUES (3, '777');
