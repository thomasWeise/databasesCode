/* Drop the tables for the M-||-----|<-N relationship. */

ALTER TABLE m DROP CONSTRAINT m_fknid_mid_fk;
DROP TABLE IF EXISTS n;
DROP TABLE IF EXISTS m;
DROP SEQUENCE m_id;
