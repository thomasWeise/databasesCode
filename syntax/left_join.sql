-- The Syntax of a LEFT JOIN.
-- We combine the information of the two tables Table_1 and Table_2.

-- Usually, Table_1 has primary key column 'a' which is referenced as
-- foreign key by column 'b' in Table_2.
-- We then return the values of the columns 'x' of Table_1 and 'y' of
-- Table_2.
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
