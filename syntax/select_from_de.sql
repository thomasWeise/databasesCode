-- Werte bestimmter Spalten einer Tabelle auslesen.
--
-- Dieses Kommando gibt die Werte der Spalte 'columnName' der Tabelle
-- 'tableName' für alle Zeilen zurück.
-- Das Ergebnis sieht wie eine (temporäre) Tabelle aus, die nur die
-- aus Tabelle 'tableName' ausgewählte(n) Spalte(n) hat.
--
-- columnName: Name der Spalte, die wir auswählen wollen
--  tableName: Name der Tabelle, zu der die Spalte gehört.
SELECT columnName FROM tableName;

-- Sie können auch mehrere Spalten auf einmal auswählen.
-- Dieser Befehl selektiert N Spalten aus der Tabelle.
-- Die Namen der Spalten sind durch Kommas (",") getrennt.
SELECT columnName1, columnName2, ..., columnNameN FROM tableName;

-- Diese Anweisung gibt alle Werte aus allen Spalten der Tabelle zurück.
SELECT * FROM tableName;
