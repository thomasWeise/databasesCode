/* Can we insert a M that is related to a N related to another M? */

-- N with id 4 is already related to M with id 3.
-- Can we make it point to the new M row instead?
WITH m_new AS (INSERT INTO m (fknid, x) VALUES (4, '555')
        RETURNING mid, fknid)
    UPDATE n SET fkmid = m_new.mid FROM m_new WHERE nid = fknid;
