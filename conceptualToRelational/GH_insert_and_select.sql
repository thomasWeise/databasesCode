/* Insert into tables for G-|o-----|<-H relationship. */

-- Insert some rows into the table for entity type H.
-- We can only create rows in G related to existing H entities.
INSERT INTO h (y) VALUES ('AB'), ('CD'), ('EF'), ('GH');

-- Insert into G and relate_g_and_h at the same time.
-- This creates G entry with id 1 and relationship (1, 1).
WITH g_id AS (INSERT INTO g (x, h) VALUES ('123', 1) RETURNING id)
    INSERT INTO relate_g_and_h (g, h) SELECT id, 1 FROM g_id;

-- Insert into G and relate_g_and_h at the same time.
-- This creates G entry with id 2 and relationship (2, 4).
WITH g_id AS (INSERT INTO g (x, h) VALUES ('789', 4) RETURNING id)
    INSERT INTO relate_g_and_h (g, h) SELECT id, 4 FROM g_id;

-- The second relation between the first G entity and a H entity can be
-- inserted much more easily.
INSERT INTO relate_g_and_h VALUES (1, 2);

-- Combine the rows from G and H. This needs two INNER JOINs.
SELECT g.x, h.y FROM g
    INNER JOIN relate_g_and_h ON g.id = relate_g_and_h.g
    INNER JOIN h ON h.id = relate_g_and_h.h;
