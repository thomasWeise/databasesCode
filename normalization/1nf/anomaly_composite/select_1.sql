/** Get a list of students from China. */

-- Fails to get addresses from the PRC and includes addresses from
-- Chinatown, New York.
SELECT name, full_address as address_attempt_1 FROM student
    INNER JOIN address ON student.address = address.id
    WHERE full_address ILIKE '%china%';
