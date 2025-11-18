/* Insert a wrong row into tables for C-|o-----||-D relationship. */

-- It is impossible to create a row in C that references no row in D.
INSERT INTO c (x) VALUES ('365');
