/* Cleanup after the example: Delete the Database and User */

-- This must be run by the administrative user 'postgres'.

-- If the database 'factory' exists, we delete it.
DROP DATABASE IF EXISTS factory;

-- If the user 'boss' already exists, we delete it.
-- We can only delete the user after all objects associated with it,
-- e.g., the databases, have been deleted.
DROP USER IF EXISTS boss;
