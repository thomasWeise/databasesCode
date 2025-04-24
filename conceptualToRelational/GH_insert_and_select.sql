/* Inserting data into the tables for the G-|o-----|<-H relationship. */

-- Insert some rows into the table for entity type H.
-- Not specifying `g` leave the references G as NULL for now.
INSERT INTO h (y) VALUES ('AB'), ('CD'), ('EF'), ('GH'), ('IJ'), ('KL');

-- Insert into G and relate to H. We do this three times.
WITH new_g AS (INSERT INTO g (fkhid, x) VALUES (1, '123')
        RETURNING gid, fkhid)
    UPDATE h SET fkgid = new_g.gid FROM new_g WHERE h.hid = new_g.fkhid;

WITH new_g AS (INSERT INTO g (fkhid, x) VALUES (3, '456')
        RETURNING gid, fkhid)
    UPDATE h SET fkgid = new_g.gid FROM new_g WHERE h.hid = new_g.fkhid;

WITH new_g AS (INSERT INTO g (fkhid, x) VALUES (4, '789')
        RETURNING gid, fkhid)
    UPDATE h SET fkgid = new_g.gid FROM new_g WHERE h.hid = new_g.fkhid;

-- Link one H row to another G row. (We do this twice.)
UPDATE h SET fkgid = 3 WHERE hid = 2;
UPDATE h SET fkgid = 3 WHERE hid = 5;

-- Combine the rows from G and H.
SELECT gid, x, hid, y FROM h INNER JOIN g ON g.gid = h.fkgid;
