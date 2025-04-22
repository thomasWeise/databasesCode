/* Can we insert a G that is related to a H related to another G? */

-- H with id 4 is already related to G with id 3.
-- Can we make it point to the new G row instead?
WITH g_id AS (INSERT INTO g (h, x) VALUES (4, '444') RETURNING id)
    UPDATE h SET g = g_id.id FROM g_id WHERE h.id = 4;
