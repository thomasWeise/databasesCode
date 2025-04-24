/* Insert into the tables for the S->|-----|<-T relationship. */

-- Create a pair of new and related S and T entities.
WITH s_id AS (SELECT NEXTVAL('sqsid') AS new_sid),
     new_t AS (INSERT INTO t (y, fksid)
        SELECT 'AB', new_sid FROM s_id RETURNING tid, fksid),
     new_s AS (INSERT INTO s (sid, x, fktid)
        SELECT fksid, '123', tid FROM new_t RETURNING sid, fktid)
     INSERT INTO relate_s_and_t (fksid, fktid)
        SELECT sid, fktid FROM new_s;

-- Create a new S record and relate it to an existing T entity.
WITH new_s AS (INSERT INTO s (x, fktid) VALUES ('456', 1)
        RETURNING sid, fktid)
     INSERT INTO relate_s_and_t (fksid, fktid)
        SELECT sid, fktid FROM new_s;

-- Create a new T entity and relate it to an existing S entity.
WITH new_t AS (INSERT INTO t (y, fksid) VALUES ('CD', 2)
        RETURNING tid, fksid)
     INSERT INTO relate_s_and_t (fksid, fktid)
        SELECT fksid, tid FROM new_t;

-- Create a new T entity and relate it to an existing S entity.
WITH new_t AS (INSERT INTO t (y, fksid) VALUES ('EF', 2)
        RETURNING tid, fksid)
     INSERT INTO relate_s_and_t (fksid, fktid)
        SELECT fksid, tid FROM new_t;

-- We can now insert additional relationships.
INSERT INTO relate_s_and_t VALUES (1, 3);

-- Combine the rows from S and T. This needs two INNER JOINs.
SELECT sid, x, tid, y FROM relate_s_and_t
    INNER JOIN s ON s.sid = relate_s_and_t.fksid
    INNER JOIN t ON t.tid = relate_s_and_t.fktid;
