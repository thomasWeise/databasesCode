/* Create the tables for a M-||-----|<-N relationship. */

-- The sequence for the IDs.
CREATE SEQUENCE mn_id;

-- Table M: Each row in M is related to one or multiple rows in H.
CREATE TABLE m (
    id INT DEFAULT NEXTVAL('mn_id') PRIMARY KEY,  -- Use ID sequence!
    n  INT NOT NULL,  -- later used to reference relate_m_and_n
    x  CHAR(3)        -- example for other attributes
);

-- Table N: Each row in N is related exactly one row in M.
CREATE TABLE n (
    id INT DEFAULT NEXTVAL('mn_id') PRIMARY KEY,  -- Use ID sequence!
    m  INT NOT NULL,  -- later used to reference relate_m_and_n
    y  CHAR(2)        -- example for other attributes
);

-- The table for managing the relationship between M and N.
CREATE TABLE relate_m_and_n (
    m INT NOT NULL        REFERENCES m (id),
    n INT NOT NULL UNIQUE REFERENCES n (id),
    PRIMARY KEY (m, n)  -- Important: Primary key includes both columns.
);

-- To table M, we add the foreign key reference constraint towards
-- table relate_m_and_n. This enforces that one relation must exist.
ALTER TABLE m ADD CONSTRAINT m_id_n_fk FOREIGN KEY (id, n)
    REFERENCES relate_m_and_n (m, n);

-- To table N, we add the foreign key reference constraint towards
-- table relate_m_and_n. This enforces that exactly one relation exists.
ALTER TABLE n ADD CONSTRAINT n_m_id_fk FOREIGN KEY (m, id)
    REFERENCES relate_m_and_n (m, n);
