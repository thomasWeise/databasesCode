/* Create a view adding age information to person table. */

-- Create a view that adds the age to the fields of the person table.
CREATE VIEW person_age AS
    SELECT *, AGE(date_of_birth) AS age FROM person;

-- Show current date.
SELECT CURRENT_DATE;

-- Execute the view.
SELECT name.full_name, person_age.date_of_birth, person_age.age
    FROM person_age INNER JOIN name ON name.person = person_age.id
    WHERE name.is_official = TRUE;
