/* Inserting data into the tables for the K-||-----o<-L relationship. */

-- Insert some rows into the table for entity type K.
INSERT INTO k (x) VALUES ('123'), ('456'), ('789'), ('101'), ('202');

-- Insert some rows into the table for entity type L, referencing K.
INSERT INTO l (y, fkkid) VALUES ('AB', 1), ('CD', 1), ('EF', 4),
                                ('GH', 3);

-- Combine the rows from K and L.
SELECT kid, x, lid, y FROM l INNER JOIN k ON l.fkkid = k.kid;
