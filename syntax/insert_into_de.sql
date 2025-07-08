-- Die SQL syntax für das Einfügen/Anhängen von Daten an eine Tabelle.
--
--             tableName: der Name der Tabelle
--               columnI: der Name der I-ten Spalte, wie beim Erstellen
--                        der Tabelle angegeben
-- value for rowJcolumnK: der Wert für Spalte K in der J-ten eingefügten
--                        Spalte
--
-- Hinweis: Spalten, deren Werte automatisch generiert werden sowie
--          Spalten, die *nicht* mit 'NOT NULL' markiert sind müssen
--          nicht belegt werden. Sie können sowohl von der Spalten-
--          namensliste als auch von den Wertelisten weggelassen werden.
INSERT INTO tableName (column1, column2, ...)
VALUES (value for row1column1, value for row1column2, ...),
       (value for row2column1, value for row2column2, ...),
       (value for row3column1, value for row3column2, ...),
       ...
       (value for rowNcolumn1, value for rowNcolumn2, ...);
