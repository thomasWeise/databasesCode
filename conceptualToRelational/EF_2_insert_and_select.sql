/* Insert into tables for E-|o-----o<-F relationship. */

-- Insert some rows into the table for entity type E.
INSERT INTO e (x) VALUES ('123'), ('456'), ('789'), ('101');

-- Insert some rows into the table for entity type F.
INSERT INTO f (y, fkeid) VALUES ('AB', 1), ('CD', 1), ('EF', NULL),
                                ('GH', 3);

-- Combine the rows from E and F. This needs one INNER JOIN.
SELECT eid, x, fid, y FROM e INNER JOIN f ON f.fkeid = e.eid;
