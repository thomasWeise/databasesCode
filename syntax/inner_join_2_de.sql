-- Die Syntax von *zwei* kombinierten INNER JOINs.
-- Wir vereinigen Informationen der Tabellen Table_1, Table_2, Table_3.

-- Nur wenn Zeilen in allen drei Tabellen passen, werden Ergebniszeilen
-- generiert.
SELECT Table_1.x, Table_2.y, Table_3.z FROM Table_1
    INNER JOIN Table_2 ON (Table_1.a = Table_2.b)
    INNER JOIN Table_3 ON (Table_2.y = Table_3.c);

--    Table_1         Table_2      Table_3         Query Result
--    a | x           b | y         c | z            x | y | z
--   ---+-------     ---+-----     ---+----     -------+--------
--    1 | Hello       1 | A         A | 10       Hello | A | 10
--    2 | World       2 | B         B | 20       World | B | 20
--    3 | from        2 | C         B | 30       World | B | 30
--    4 | HFUU        4 | D         C | 40       World | C | 40
--                    2 | E         D | 50       HFUU  | D | 50
--                                  F | 60
