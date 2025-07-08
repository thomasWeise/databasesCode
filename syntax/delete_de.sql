-- Lösche alle Zeilen in Tabelle 'tableName' auf die die
--- 'WHERE'-Bedingung zutrifft.
-- Eine DBMSe wie PostgreSQL bieten zudem die RETURNING-Klausel an, die
-- wie ein SELECT funktioniert, das nur auf die gelöschten Zeilen (bevor
-- sie gelöscht werden) angewendet wird.
DELETE FROM tableName WHERE <condition>
RETURNING column1, column2, ...;
