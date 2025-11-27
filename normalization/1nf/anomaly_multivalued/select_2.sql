/** Get a list of students with at least one address in China. */

-- Use the previous query as *subquery* to construct the overall result.
SELECT name, city || ', ' || street_address AS address FROM (
              SELECT name, address_1 AS adr FROM student
        UNION SELECT name, address_2 AS adr FROM student)
    INNER JOIN address ON adr = address.id
    WHERE country ILIKE ANY(ARRAY['%china%', '%PRC%', '%P.R.C.%']);
