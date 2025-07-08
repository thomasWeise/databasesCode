-- Erstellen einer neuen Tabelle mit zusätzlichen Einschränkungen.
--
--            tableName: der Name für die zu erstellende Tabelle
--              columnX: der Name der X-ten Spalte
--        typeOfColumnX: der Datentyp für die X-te Spalte
-- constraintsOnColumnX: Einschränkungen für die X-te Spalte, kann weg-
--                       gelassen werden, oder eine Kombination von
--                       UNIQUE, NOT NULL, PRIMARY KEY, etc.
--      constraintNameY: der Name der Y-ten Einschränkung
--          expressionY: der Prüfausdruck der Y-ten Einschränkung
--
-- Jedes mal, wenn eine Zeile in die Tabelle angefügt oder geändert
-- wird, werden die Prüfausdrücke aller Einschränkungen ausgewertet.
-- Wenn auch nur einer von ihnen nicht Wahr=True ergibt, wird die
-- Operation abgebrochen, nicht ausgeführt, und ein Fehler berichtet.
CREATE TABLE tableName (
    column1 typeOfColumn1 constraintsOnColumn1,
    column2 typeOfColumn2 constraintsOnColumn2,
    ...
    CONSTRAINT constraintName1 CHECK expression1,
    CONSTRAINT constraintName2 CHECK expression2,
    ...
);
