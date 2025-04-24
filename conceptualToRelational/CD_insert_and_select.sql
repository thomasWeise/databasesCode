/* Inserting data into the tables for the C-|o-----||-D relationship. */

-- Insert some rows into the table for entity type D.
-- We first must create the D elements, because the C rows cannot
-- exist without referencing one row in D each.
INSERT INTO d (y) VALUES ('AB'), ('CD'), ('EF'), ('GH');

-- Insert some rows into the table for entity type C.
INSERT INTO c (fkdid, x) VALUES (1, '123'), (3, '456'), (4, '789'),
                                (2, '101');

-- Combine the rows from C and D.
SELECT cid, x, did, y FROM c INNER JOIN d ON c.fkdid = d.did;
