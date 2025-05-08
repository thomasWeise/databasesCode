/** Get a list of students with at least one address in China. */

-- Select the student id, student name, and address as three columns.
      SELECT name, address_1 AS adr FROM student
UNION SELECT name, address_2 AS adr FROM student
    WHERE address_2 IS NOT NULL;

-- Use the above as *subquery* to construct the overall result.
SELECT name, city || ', ' || street_address AS address FROM (
              SELECT name, address_1 AS adr FROM student
        UNION SELECT name, address_2 AS adr FROM student)
    INNER JOIN address ON adr = address.id
    WHERE country ILIKE ANY(ARRAY['%china%', '%PRC%', '%P.R.C.%']);

-- Remove double student entries.
SELECT DISTINCT ON (sid)
    name, city || ', ' || street_address AS address FROM (
              SELECT id AS sid, name, address_1 AS adr FROM student
        UNION SELECT id AS sid, name, address_2 AS adr FROM student)
    INNER JOIN address ON adr = address.id
    WHERE country ILIKE ANY(ARRAY['%china%', '%PRC%', '%P.R.C.%']);
