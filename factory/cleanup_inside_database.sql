/* Cleanup after the example: Delete all Tables and Views. */

-- This must be run inside the database, by user 'boss'.

-- Delete the views.
DROP VIEW IF EXISTS sale;

-- Delete the tables, in the inverse order of creation.
DROP TABLE IF EXISTS demand;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS customer;
