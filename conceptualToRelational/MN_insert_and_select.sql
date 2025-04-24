/* Inserting data into the tables for the M-||-----|<-n relationship. */

-- Insert into M and N at the same time.
-- This creates M entry with id 1, and N entry with id 1, and
-- relationship (1, 1).
WITH m_id  AS (SELECT NEXTVAL('sqmid') AS new_mid),
     new_n AS (INSERT INTO n (y, fkmid)
        SELECT 'AB', new_mid FROM m_id RETURNING nid, fkmid)
     INSERT INTO m (mid, x, fknid) SELECT fkmid, '123', nid FROM new_n;

-- Create a new row in N referencing an existing row in M.
INSERT INTO n (y, fkmid) VALUES ('CD', 1);

-- Insert into M and N at the same time.
WITH m_id  AS (SELECT NEXTVAL('sqmid') AS new_mid),
     new_n AS (INSERT INTO n (y, fkmid)
        SELECT 'EF', new_mid FROM m_id RETURNING nid, fkmid)
     INSERT INTO m (mid, x, fknid) SELECT fkmid, '456', nid FROM new_n;

-- Insert into M and N at the same time.
WITH m_id AS (SELECT NEXTVAL('sqmid') AS new_mid),
     new_n AS (INSERT INTO n (y, fkmid)
        SELECT 'GH', new_mid FROM m_id RETURNING nid, fkmid)
     INSERT INTO m (mid, x, fknid) SELECT fkmid, '789', nid FROM new_n;

-- Create a new row in N referencing an existing row in M.
INSERT INTO n (y, fkmid) VALUES ('IJ', 1);

-- Combine the rows from M and N.
SELECT mid, x, nid, y FROM n INNER JOIN m ON n.fkmid = m.mid;
