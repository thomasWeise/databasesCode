-- Die Syntax eines LEFT JOIN. The Syntax of a LEFT JOIN.
-- Wir vereinigen Informationen aus den Tabellen Table_1 und Table_2.

-- Oft, aber nicht immer, hat Table_1 die Spalte 'a' als Primär-
-- schlüssel, der von Spalte 'b' in Table_2 als Fremdschlüssel
-- referenziert wird.
-- In diesem Beispiel geben wir die Werte von Spalte 'x' der Table_1
-- und 'y' von Table_2 zurück, nachdem wir beide Tabellen vereinigt
-- haben.
-- Für Zeilen in Table_1 ohne passende Zeilen in Table_2 werden
-- Ergebniszeilen generiert, bei denen alle Werte, die eigentlich von
-- Table_2 kommen sollten, mit NULL belegt.
SELECT Table_1.x, Table_2.y FROM Table_1
    LEFT JOIN Table_2 ON (Table_1.a = Table_2.b);

--    Table_1         Table_2        Query Result
--    a | x           b | y             x | y
--   ---+-------     ---+-----     -------+--------
--    1 | Hello       1 | A         Hello | A
--    2 | World       2 | B         World | B
--    3 | from        2 | C         World | C
--    4 | HFUU        4 | D         World | E
--                    2 | E         from  | <NULL>
--                                  HFUU  | D
