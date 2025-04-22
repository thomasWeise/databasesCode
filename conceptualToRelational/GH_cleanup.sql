/* Drop the tables for the G-|o-----|<-H relationship. */

ALTER TABLE h DROP CONSTRAINT h_g_fk;
DROP TABLE IF EXISTS g;
DROP TABLE IF EXISTS h;
