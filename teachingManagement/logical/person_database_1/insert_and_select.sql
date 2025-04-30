/** Insert some rows into the person database. */

-- Create two ID types.
INSERT INTO id_type (name, validation_regexp) VALUES
    ('national ID', '^\d{6}((19)|(20))\d{9}[0-9X]$'),
    ('mobile phone number', '^\d{11}$');

-- Insert a new person record and a new ID record at the same time.
WITH pers_id AS (SELECT NEXTVAL('person_id_counter') AS person),
     new_pers_id AS (INSERT INTO personal_id (
            id_type, person, value, valid_from)
        SELECT 1, person, '123456199501021234', '2024-12-01' FROM pers_id
            RETURNING id, person)
     INSERT INTO person (id, person_id) SELECT id, person FROM new_pers_id;

-- Insert a new personal ID for an existing person record.
WITH new_pers_id AS (INSERT INTO personal_id (
            id_type, person, value, valid_from)
        VALUES (2, 1, '1234567890', '2023-02-07') RETURNING id, person)
     INSERT INTO person (id, person_id) SELECT id, person FROM new_pers_id;

-- Insert a new person record and a new ID record at the same time.
WITH pers_id AS (SELECT NEXTVAL('person_id_counter') AS person),
     new_pers_id AS (INSERT INTO personal_id (
            id_type, person, value, valid_from)
        SELECT 1, person, '123456200508071234', '2021-09-21' FROM pers_id
            RETURNING id, person)
     INSERT INTO person (id, person_id) SELECT id, person FROM new_pers_id;

-- Print the records that were inserted.
SELECT person, personal_id.id as pk, value, valid_from, name AS id_type FROM personal_id
    INNER JOIN id_type ON personal_id.id_type = id_type.id;
