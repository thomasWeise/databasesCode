/* The syntax for deleting elements: Using the 'DROP' Command.
 *
 * We can only delete elements that are not referenced by other
 * elements. Users can only be deleted if they do not own anything
 * anymore. Tables can only be deleted if they are not part of any
 * foreign key constraint. And so on.
 */

-- Delete table "table_name": Fails if the table does not exist.
DROP TABLE table_name;
-- Delete table "table_name": It is OK if the table does not exist.
DROP TABLE IF EXISTS table_name;

-- Delete view "view_name": Fails if the view does not exist.
DROP VIEW view_name;
-- Delete view "view_name": It is OK if the view does not exist.
DROP VIEW IF EXISTS view_name;

-- Delete database "database_name": Fails if the DB does not exist.
DROP DATABASE database_name;
-- Delete database "database_name": It is OK if the DB does not exist.
DROP DATABASE IF EXISTS database_name;

-- Delete user "user_name": Fails if the user does not exist.
DROP USER user_name;
-- Delete user "user_name": It is OK if user does not exist.
DROP USER IF EXISTS user_name;
