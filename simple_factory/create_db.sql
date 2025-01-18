/* In this example, we create a new database named 'factory'. */

-- If the database 'factory' already exists, we delete it.
-- This allows you to run the example several times without error.
DROP DATABASE IF EXISTS factory;

-- On PostgreSQL, there is a table `pg_databases` listing all databases.
-- We print the column `datname` with the names of the databases.
SELECT datname FROM pg_database;

-- Create the database 'factory'.
CREATE DATABASE factory;

-- Store a comment about the purpose of our database.
COMMENT ON DATABASE factory is
    'This database holds all data about our factory and products.';

-- Now there is a new database: "factory".
SELECT datname FROM pg_database;
