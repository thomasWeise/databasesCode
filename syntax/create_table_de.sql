-- Erstellen einer neuen Tabelle.
--
--            tableName: der Name für die zu erstellende Tabelle
--              columnX: der Name der X-ten Spalte
--        typeOfColumnX: der Datentyp für die X-te Spalte
-- constraintsOnColumnX: Einschränkungen für die X-te Spalte, kann weg-
--                       gelassen werden, oder eine Kombination von
--                       UNIQUE, NOT NULL, PRIMARY KEY, etc.
CREATE TABLE tableName (
    column1 typeOfColumn1 constraintsOnColumn1,
    column2 typeOfColumn2 constraintsOnColumn2,
    column3 typeOfColumn3 constraintsOnColumn3,
    ...
);
