/* Create the tables for a Q->o-----|<-R relationship. */

-- Table Q: Each row in Q is related to one or multiple rows in R.
CREATE TABLE q (
    qid   INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    fkrid INT NOT NULL,  -- later used to reference R via relate_q_and_r
    x     CHAR(3)        -- example for other attributes
);

-- Table R: Each row in R is related to zero, one, or many rows in Q.
CREATE TABLE r (
    rid INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    y   CHAR(2)  -- example for other attributes
);

-- The table for managing the relationship between Q and R.
CREATE TABLE relate_q_and_r (
    fkqid INT NOT NULL REFERENCES q (qid),
    fkrid INT NOT NULL REFERENCES r (rid),
    PRIMARY KEY (fkqid, fkrid)  -- Primary key includes both columns.
);

-- To table Q, we add the foreign key reference constraint towards
-- table relate_q_and_r. This enforces that one relation must exist.
ALTER TABLE q ADD CONSTRAINT q_qid_fkrid_fk FOREIGN KEY (qid, fkrid)
    REFERENCES relate_q_and_r (fkqid, fkrid);
