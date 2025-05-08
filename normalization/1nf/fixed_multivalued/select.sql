/** Get a list of students with at least one address in China. */

SELECT DISTINCT ON (student)
    name, city || ', ' || street_address AS address FROM student_address
    INNER JOIN address ON address = address.id
    INNER JOIN student ON student = student.id
    WHERE country ILIKE ANY(ARRAY['%china%', '%PRC%', '%P.R.C.%']);
