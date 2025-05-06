/** Get a list of students from China. */

-- Fails to get addresses from the PRC and includes addresses from
-- Chinatown, New York.
SELECT name, full_address as address_attempt_1 FROM student
    INNER JOIN address ON student.address = address.id
    WHERE full_address ILIKE '%china%';

-- Gets everything right, but is still error prone.
-- For examples, what if China was written in Chinese?
-- What with other words or names that include China?
SELECT name, full_address as address_attempt_2 FROM student
    INNER JOIN address ON student.address = address.id
    WHERE ((full_address ILIKE '%china%') AND NOT
           (full_address ILIKE '%chinatown%'))
          OR (full_address ILIKE '%PRC%')
          OR (full_address ILIKE '%P.R.C.%');
