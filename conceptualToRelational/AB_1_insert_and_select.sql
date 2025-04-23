/* Insert into tables for A-|o-----o|-B relationship. */

-- Insert some rows into the table for entity type A.
INSERT INTO a (x) VALUES ('123'), ('456'), ('789'), ('101');

-- Insert some rows into the table for entity type B.
INSERT INTO b (y) VALUES ('AB'), ('CD'), ('EF'), ('GH');

-- Create the relationships between the A and B rows.
INSERT INTO relate_a_and_b (fkaid, fkbid) VALUES (1, 1), (2, 3), (3, 4);

-- Combine the rows from A and B. This needs two INNER JOINs.
SELECT aid, x, bid as bid, y FROM relate_a_and_b
    INNER JOIN a ON a.aid = relate_a_and_b.fkaid
    INNER JOIN b ON b.bid = relate_a_and_b.fkbid;
