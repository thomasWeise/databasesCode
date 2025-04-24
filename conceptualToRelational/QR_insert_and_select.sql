/* Inserting data into the tables for the Q->o-----|<-R relationship. */

-- Insert some rows into the table for entity type R first.
-- We can only create rows in Q related to existing R entities.
INSERT INTO r (y) VALUES ('AB'), ('CD'), ('EF'), ('GH'), ('IJ'), ('KL');

-- Insert into Q and relate_q_and_r at the same time.
-- This creates Q entry with id 1 and relationship (1, 1).
WITH q_new AS (INSERT INTO q (x, fkrid) VALUES ('123', 1)
        RETURNING qid, fkrid)
    INSERT INTO relate_q_and_r (fkqid, fkrid)
        SELECT qid, fkrid FROM q_new;

-- Insert into Q and relate_q_and_r at the same time.
-- This creates Q entry with id 2 and relationship (2, 4).
WITH q_new AS (INSERT INTO q (x, fkrid) VALUES ('456', 4)
        RETURNING qid, fkrid)
    INSERT INTO relate_q_and_r (fkqid, fkrid)
        SELECT qid, fkrid FROM q_new;

-- Insert into Q and relate_q_and_r at the same time.
-- This creates Q entry with id 2 and relationship (3, 1).
WITH q_new AS (INSERT INTO q (x, fkrid) VALUES ('789', 1)
        RETURNING qid, fkrid)
    INSERT INTO relate_q_and_r (fkqid, fkrid)
        SELECT qid, fkrid FROM q_new;

-- We can now insert additional relationships
INSERT INTO relate_q_and_r VALUES (1, 2), (2, 3), (2, 5);

-- Combine the rows from Q and R. This needs two INNER JOINs.
SELECT qid, x, rid, y FROM relate_q_and_r
    INNER JOIN q ON q.qid = relate_q_and_r.fkqid
    INNER JOIN r ON r.rid = relate_q_and_r.fkrid;
