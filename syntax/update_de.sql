-- Syntax des UPDATE-Kommandos.

-- Wir wollen die Werte bestimmter Spalten der Tabelle 'tableName'
-- ändern, in den Zeilen, die die angegebene Bedingung erfüllen.
-- Wir spezifizieren den Tabellennamen direkt nach UPDATE.

-- Im 'SET'-Teil geben wir Ausdrücke an für die neuen Werte der Spalten,
-- die wir ändern wollen. Diese Ausdrücke können einfach Konstanten wie
-- '1' sein, aber auch komplexe mathematische Berechnungen basierend auf
-- den alten Werten enthalten, z.B. so etwas wie
-- 'column_1 = column_1 * 7'.

-- Wenn wir nicht alle Zeilen ändern wollen, dann können wir eine
-- 'WHERE'-Klausel angeben. Die Änderung wird dann nur auf die Zeilen
-- angewandt, für die 'WHERE'-Bedingung wahr/True ist.

-- Manche Systeme, wie PostgreSQL, erlauben uns die 'RETURNING'-Klausel
-- zu verwenden, die wie ein 'SELECT' wirkt, das *nach* dem Update und
-- nur auf die betreffenden Zeilen angewandt wird.
UPDATE tableName
    SET column_1 = expression_1, column_2 = expression_2, ...
    WHERE <condition to select rows that should be changed>
    RETURNING *; -- optional/PostgreSQL: Daten geänderter Zeilen holen
