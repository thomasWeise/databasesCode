/* In this example, we create a new database named 'factory'. */

-- On PostgreSQL, there is a table `pg_databases` listing all databases.
-- We print the column `datname` with the names of the databases.
SELECT datname FROM pg_database;

-- Create the database 'factory', owned by user 'boss'.
CREATE DATABASE factory OWNER boss;

-- Store a comment about the purpose of our database.
COMMENT ON DATABASE factory is
    'This database holds all data about our factory and products.';

-- Now there is a new database in the list, namely 'factory'.
SELECT datname FROM pg_database;
