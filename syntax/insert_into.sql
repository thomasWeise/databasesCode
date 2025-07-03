-- The SQL syntax for inserting / appending data into a table.
--
--             tableName: the name of the table
--               columnI: the name of columnI, as used when the
--                        table was created
-- value for rowJcolumnK: the value for column K of the the J-th
--                        inserted row
--
-- Notice: Columns whose values are automatically generated as well as
--         columns that are *not* marked as 'NOT NULL' do not need to
--         be provided. They then are omitted from both the column name
--         list and the values lists for the inserted the rows.
INSERT INTO tableName (column1, column2, ...)
VALUES (value for row1column1, value for row1column2, ...),
       (value for row2column1, value for row2column2, ...),
       (value for row3column1, value for row3column2, ...),
       ...
       (value for rowNcolumn1, value for rowNcolumn2, ...);
