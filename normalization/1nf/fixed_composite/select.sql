/** Get a list of students from China. */

-- Much easier due to 1NF, but still a bit problematic due to multiple
-- names for same country.
SELECT name, country || ', ' || COALESCE(province || ', ', '')
                     || postal_code || ' ' || city || ', '
                     || street_address AS address FROM student
    INNER JOIN address ON student.address = address.id
    WHERE country ILIKE ANY(ARRAY['%china%', '%PRC%', '%P.R.C.%']);
