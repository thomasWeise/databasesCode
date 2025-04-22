/* Drop the tables for the M-||-----|<-N relationship. */

ALTER TABLE m DROP CONSTRAINT m_id_n_fk;
ALTER TABLE n DROP CONSTRAINT n_m_id_fk;
DROP TABLE IF EXISTS relate_m_and_n;
DROP TABLE IF EXISTS m;
DROP TABLE IF EXISTS n;
DROP SEQUENCE mn_id;
