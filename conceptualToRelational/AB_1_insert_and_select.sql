/* Insert into tables for A-|o-----o|-B relationship. */

-- Insert some rows into the table for A.
INSERT INTO a (x) VALUES ('123'), ('456'), ('789'), ('101');

-- Insert some rows into the table for B,
INSERT INTO b (y) VALUES ('AB'), ('CD'), ('EF'), ('GH');

-- Create the relationships between the A and B rows.
INSERT INTO relate_a_and_b (a, b) VALUES (1, 1), (2, 3), (3, 4);

-- Combine the rows from A and B.
SELECT a.x, b.y FROM a
    INNER JOIN relate_a_and_b ON a.id = relate_a_and_b.a
    INNER JOIN b ON b.id = relate_a_and_b.b;
