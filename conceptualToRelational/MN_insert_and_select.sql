/* Insert into tables for M-||-----|<-n relationship. */

-- Insert into M and N and relate_m_and_n at the same time.
-- This creates M entry with id 1, and N entry with id 2, and
-- relationship (1, 2).
WITH new_ids AS (INSERT INTO relate_m_and_n (m, n)
        SELECT NEXTVAL('mn_id'), NEXTVAL('mn_id') RETURNING m, n),
     m_new AS (INSERT INTO m (id, x, n)
        SELECT m, '123', n FROM new_ids RETURNING id, n)
     INSERT INTO n (id, y, m) SELECT n,  'AB', id FROM m_new;

-- Create a new row in N that references and existing row in M.
WITH n_new AS (INSERT INTO n (y, m)
        SELECT 'CD', m.id FROM m WHERE x = '123' RETURNING id, m)
     INSERT INTO relate_m_and_n (m, n) SELECT m, id FROM n_new;

-- Insert into M and N and relate_m_and_n at the same time.
-- This creates M entry with id 4, and N entry with id 5, and
-- relationship (4, 5).
WITH new_ids AS (INSERT INTO relate_m_and_n (m, n)
        SELECT NEXTVAL('mn_id'), NEXTVAL('mn_id') RETURNING m, n),
     m_new   AS (INSERT INTO m (id, x, n)
        SELECT m, '456', n FROM new_ids RETURNING id, n)
     INSERT INTO n (id, y, m) SELECT n,  'EF', id FROM m_new;

-- Combine the rows from M and N. This needs two INNER JOINs.
SELECT m.id AS m_id, m.x, n.id AS n_id, n.y FROM m
    INNER JOIN relate_m_and_n ON m.id = relate_m_and_n.m
    INNER JOIN n ON n.id = relate_m_and_n.n;
