/* Insert into tables for G-|o-----|<-H relationship. */

-- Insert some rows into the table for entity type H.
INSERT INTO h (y) VALUES ('AB'), ('CD'), ('EF'), ('GH');

INSERT INTO g (x, h) VALUES ('123', 1);  -- gets id 1
INSERT INTO relate_g_and_h (g, h) VALUES (1, 1);

-- Insert into g and relate_g_and_h at the same time(?)
WITH g_id AS (INSERT INTO g (x, h) VALUES ('123', 1) RETURNING id)
    INSERT INTO relate_g_and_h (g, h) SELECT id, 1 FROM g_id;

WITH g_id AS (INSERT INTO g (x, h) VALUES ('789', 4) RETURNING id)
    INSERT INTO relate_g_and_h (g, h) SELECT id, 4 FROM g_id;

-- The second relation between the first G entity and a H entity can be
-- inserted much more easily.
INSERT INTO relate_g_and_h VALUES (1, 2);

-- Combine the rows from G and H. This needs two INNER JOINs.
SELECT g.x, h.y FROM g
    INNER JOIN relate_g_and_h ON g.id = relate_g_and_h.g
    INNER JOIN h ON h.id = relate_g_and_h.h;
