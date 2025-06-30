-- Obtain the values in specific column(s) of a table.
--
-- This command returns the values of column "columnName" in table
-- "tableName" for all the rows.
-- The result is basically a (temporary) table, with the only the
-- selected column(s) from the table "tableName".
--
-- columnName: the name of the column that we want to read.
--  tableName: the name of the table to which the column belongs.
SELECT columnName FROM tableName;

-- You can also select multiple columns at once.
-- This command here selects N columns from the table.
-- The names of the columns are separated by commas (",").
SELECT columnName1, columnName2, ..., columnNameN FROM tableName;
