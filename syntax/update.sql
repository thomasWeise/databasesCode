-- Syntax of an UPDATE Command.

-- We want to change the values of certain columns of all rows in table
-- 'tableName' that meet a certain condition.
-- We specify the table name right after UPDATE.

-- In the 'SET' part, we provide an expression with a new value to be
-- assigned to each column that we want to change. The expression can be
-- a simple constant value like '1', but it could also be a mathematical
-- expression based on the old values of the affected row, like
-- 'column_1 = column_1 * 7'.

-- If we do not want to change all of the rows, we can provide a 'WHERE'
-- clause. The change is then only applied to the rows for which the
-- 'WHERE' condition evaluates to True.

-- Some systems, like PostgreSQL, support a 'RETURNING' statement, which
-- is similar to doing a 'SELECT' after the update that only has the
-- affected rows as input.
UPDATE tableName
    SET column_1 = expression_1, column_2 = expression_2, ...
    WHERE <condition to select rows that should be changed>
    RETURNING *; -- optional / PostgreSQL: get data from affected rows
