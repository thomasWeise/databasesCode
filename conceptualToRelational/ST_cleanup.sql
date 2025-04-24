/* Drop the tables for the S->|-----|<-T relationship. */

ALTER TABLE s DROP CONSTRAINT s_sid_fktid_fk;
ALTER TABLE t DROP CONSTRAINT t_fksid_tid_fk;
DROP TABLE IF EXISTS relate_s_and_t;
DROP TABLE IF EXISTS s;
DROP TABLE IF EXISTS t;
