/* Trying to insert rows S and T without using the relationship table */

-- Create a pair of new related S and T entities, ignore relate_s_and_t.
WITH s_id AS (SELECT NEXTVAL('sqsid') AS new_sid),
     new_t AS (INSERT INTO t (y, fksid)
        SELECT 'GH', new_sid FROM s_id RETURNING tid, fksid)
     INSERT INTO s (sid, x, fktid) SELECT fksid, '555', tid FROM new_t;
