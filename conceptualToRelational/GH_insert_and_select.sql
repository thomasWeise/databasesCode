/* Insert into tables for G-|o-----|<-H relationship. */

-- Insert some rows into the table for entity type H.
-- Not specifying `g` leave the references G as NULL for now.
INSERT INTO h (y) VALUES ('AB'), ('CD'), ('EF'), ('GH'), ('IJ'), ('KL');

-- Insert into G and relate to H. We do this three times.
WITH g_id AS (INSERT INTO g (h, x) VALUES (1, '123') RETURNING h, id)
    UPDATE h SET g = g_id.id FROM g_id WHERE h.id = g_id.h;

WITH g_id AS (INSERT INTO g (h, x) VALUES (3, '456') RETURNING id, h)
    UPDATE h SET g = g_id.id FROM g_id WHERE h.id = g_id.h;

WITH g_id AS (INSERT INTO g (h, x) VALUES (4, '789') RETURNING id, h)
    UPDATE h SET g = g_id.id FROM g_id WHERE h.id = g_id.h;

-- Link one H row to another G row. (We do this twice.)
UPDATE h SET g = 3 WHERE id = 2;
UPDATE h SET g = 3 WHERE id = 5;

-- Combine the rows from G and H.
SELECT g.id AS g_id, g.x, h.id AS h_id, h.y FROM h
    INNER JOIN g ON g.id = h.g;
