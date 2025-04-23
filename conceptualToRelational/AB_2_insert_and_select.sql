/* Insert into tables for A-|o-----o|-B relationship. */

-- Insert some rows into the table for entity type A.
INSERT INTO a (x) VALUES ('123'), ('456'), ('789'), ('101');

-- Insert some rows into the table for entity type B.
INSERT INTO b (y) VALUES ('AB'), ('CD'), ('EF'), ('GH');

-- Create the relationships between the A and B rows.
UPDATE a SET fkbid = 1 WHERE aid = 1;
UPDATE a SET fkbid = 3 WHERE aid = 2;
UPDATE a SET fkbid = 4 WHERE aid = 3;

-- Combine the rows from A and B. Only one INNER JOIN is needed.
SELECT aid, x, bid, y FROM a INNER JOIN b ON a.fkbid = b.bid;
