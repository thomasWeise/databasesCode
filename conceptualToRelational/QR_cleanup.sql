/* Drop the tables for the Q->o-----|<-R relationship. */

ALTER TABLE q DROP CONSTRAINT q_qid_fkrid_fk;
DROP TABLE IF EXISTS relate_q_and_r;
DROP TABLE IF EXISTS q;
DROP TABLE IF EXISTS r;
