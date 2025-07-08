-- Delete all records from table 'tableName' that meet the 'WHERE'
-- condition.
-- Some DBMSes (like PostgreSQL) allow to use a RETURNING clause, which
-- acts like a SELECT applied *only* to the deleted rows (before they
-- are purged).
DELETE FROM tableName WHERE <condition>
RETURNING column1, column2, ...;
