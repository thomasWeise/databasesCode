/* Insert a wrong row into tables for C-|o-----||-D relationship. */

-- It is impossible to create a row in C that references a row in D
-- which is already referenced by another record.
INSERT INTO c (d, x) VALUES (3, '555');
