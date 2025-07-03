-- Create a New Table with additional Constraints.
--
--            tableName: the name of the table to create
--              columnX: the name of the X-th column.
--        typeOfColumnX: the datatype to be used for the X-th column.
-- constraintsOnColumnX: simple constraints imposed on the X-th column,
--                       can be omitted or a combination of UNIQUE,
--                       NOT NULL, PRIMARY KEY, etc.
--      constraintNameY: the name of the Y-th (check) constraint
--          expressionY: the expression of the Y-th (check) constraint
--
-- Everytime a row is entered into the table or changed, the expressions
-- of all constraints are checked. If one of them is not TRUE, then the
-- operation is cancelled, not performed, and an error is reported.
CREATE TABLE tableName (
    column1 typeOfColumn1 constraintsOnColumn1,
    column2 typeOfColumn2 constraintsOnColumn2,
    ...
    CONSTRAINT constraintName1 CHECK expression1,
    CONSTRAINT constraintName2 CHECK expression2,
    ...
);
