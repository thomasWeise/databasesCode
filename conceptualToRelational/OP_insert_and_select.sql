/* Insert into tables for O->o-----o<-P relationship. */

-- Insert some rows into the table for entity type O.
INSERT INTO o (x) VALUES ('123'), ('456'), ('789'), ('101');

-- Insert some rows into the table for entity type P.
INSERT INTO p (y) VALUES ('AB'), ('CD'), ('EF'), ('GH');

-- Create some relationships between O and P.
INSERT INTO relate_o_and_p (fkoid, fkpid) VALUES
    (1, 1), (1, 2), (2, 2), (4, 1), (3, 2);

-- Combine the rows from O and P.
SELECT oid, x, pid, y FROM relate_o_and_p
    INNER JOIN o ON o.oid = relate_o_and_p.fkoid
    INNER JOIN p ON p.pid = relate_o_and_p.fkpid;
