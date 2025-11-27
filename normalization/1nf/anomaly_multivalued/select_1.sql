/** Get a list of students with at least one address in China. */

-- Select the student id, student name, and address as three columns.
      SELECT name, address_1 AS adr FROM student
UNION SELECT name, address_2 AS adr FROM student
    WHERE address_2 IS NOT NULL;
