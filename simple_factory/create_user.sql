/* In this example, we create a new user for our database. */

-- If the user 'factory_boss' already exists, we delete it.
-- This allows you to run the example several times without error.
DROP USER IF EXISTS factory_boss;

-- On PostgreSQL, there is a table `pg_catalog.pg_user` with all users.
-- We print the column `usename` with the user names.
SELECT usename FROM pg_catalog.pg_user;

-- Create the user 'factory_boss'.
-- He will be the owner of the database that we will create.
CREATE USER factory_boss WITH ENCRYPTED PASSWORD 'superboss123';

-- Now there is a new user: 'factory_boss'.
SELECT usename FROM pg_catalog.pg_user;
