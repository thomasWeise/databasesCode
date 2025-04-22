/* Insert into tables for E-|o-----o<-F relationship. */

-- Insert some rows into the table for entity type E.
INSERT INTO e (x) VALUES ('123'), ('456'), ('789'), ('101');

-- Insert some rows into the table for entity type F.
INSERT INTO f (y) VALUES ('AB'), ('CD'), ('EF'), ('GH');

-- Create the relationships between the E and F rows.
INSERT INTO relate_e_and_f (e, f) VALUES (1, 1), (1, 2), (3, 4);

-- Combine the rows from E and F. This needs two INNER JOINs.
SELECT e.id AS e_id, e.x, f.id AS f_id, f.y FROM e
    INNER JOIN relate_e_and_f ON e.id = relate_e_and_f.e
    INNER JOIN f ON f.id = relate_e_and_f.f;
