/* Insert into tables for M-||-----|<-n relationship. */

-- Insert into M and N at the same time.
-- This creates M entry with id 1, and N entry with id 1, and
-- relationship (1, 1).
WITH new_m AS (SELECT NEXTVAL('m_id') AS m_id),
     new_n AS (INSERT INTO n (y, m) SELECT 'AB', m_id FROM new_m RETURNING id, m)
     INSERT INTO m (id, x, n) SELECT m, '123', id FROM new_n;

-- Create a new row in N referencing an existing row in M.
INSERT INTO n (y, m) VALUES ('CD', 1);

-- Insert into M and N at the same time.
WITH new_m AS (SELECT NEXTVAL('m_id') AS m_id),
     new_n AS (INSERT INTO n (y, m) SELECT 'EF', m_id FROM new_m RETURNING id, m)
     INSERT INTO m (id, x, n) SELECT m, '456', id FROM new_n;

-- Insert into M and N at the same time.
WITH new_m AS (SELECT NEXTVAL('m_id') AS m_id),
     new_n AS (INSERT INTO n (y, m) SELECT 'GH', m_id FROM new_m RETURNING id, m)
     INSERT INTO m (id, x, n) SELECT m, '789', id FROM new_n;

-- Create a new row in N referencing an existing row in M.
INSERT INTO n (y, m) VALUES ('IJ', 1);

-- Combine the rows from M and N. This needs two INNER JOINs.
SELECT m.id AS m_id, m.x, n.id AS n_id, n.y FROM n
    INNER JOIN m ON n.m = m.id;
