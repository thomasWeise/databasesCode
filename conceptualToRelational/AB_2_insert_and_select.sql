/* Insert into tables for A-|o-----o|-B relationship. */

-- Insert some rows into the table for A.
INSERT INTO a (x) VALUES ('123'), ('456'), ('789'), ('101');

-- Insert some rows into the table for B,
INSERT INTO b (y) VALUES ('AB'), ('CD'), ('EF'), ('GH');

-- Create the relationships between the A and B rows.
UPDATE a SET b = 1 WHERE id = 1;
UPDATE a SET b = 3 WHERE id = 2;
UPDATE a SET b = 4 WHERE id = 3;

-- Combine the rows from A and B.
SELECT a.x, b.y FROM a INNER JOIN b ON a.b = b.id;
