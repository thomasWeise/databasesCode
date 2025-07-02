-- Create a New Table.
--
--            tableName: the name of the table to create
--              columnX: the name of the Xth column.
--        typeOfColumnX: the datatype to be used for the Xth column.
-- constraintsOnColumnX: constraints imposed on the Xth column, can be
--                       omitted or a combination of UNIQUE, NOT NULL,
--                       PRIMARY KEY, etc.
CREATE TABLE tableName (
    column1 typeOfColumn1 constraintsOnColumn1,
    column2 typeOfColumn2 constraintsOnColumn2,
    column3 typeOfColumn3 constraintsOnColumn3,
    ...
);
