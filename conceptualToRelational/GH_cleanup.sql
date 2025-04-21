/* Drop the tables for the G-|o-----|<-H relationship. */

ALTER TABLE g DROP CONSTRAINT g_id_h_fk;
DROP TABLE IF EXISTS relate_g_and_h;
DROP TABLE IF EXISTS g;
DROP TABLE IF EXISTS h;
