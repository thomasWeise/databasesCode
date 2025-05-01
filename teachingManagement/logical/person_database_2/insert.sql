/** Insert some data into the tables of our person database. */

-- Create the persons Bebbo, Bibbo, and Bebba.
INSERT INTO person (date_of_birth) VALUES
    ('2005-08-07'), ('1995-01-02'), ('1963-11-13');

-- Create the names of Bebbo, Bibbo, and Bebba.
INSERT INTO name (person, full_name, salutation, is_official,
                  start_date, end_date) VALUES
    (1, 'Bebbo', 'Bebbo Machine', TRUE,  '2005-08-07', NULL),
    (2, 'Bibbo', 'The Bib-Man',   TRUE,  '1995-01-02', NULL),
    (3, 'Bibbi', 'Ms. Bibbi',     FALSE, '1963-11-13', '1989-02-12'),
    (3, 'Bebba', 'Mrs. Bebba',    TRUE,  '1989-02-12', NULL);

-- Create two ID types: Chinese national ID and mobile phone numbers.
INSERT INTO id_type (name, validation_regexp) VALUES
    ('national ID',         '^\d{6}((19)|(20))\d{9}[0-9X]$'),
    ('mobile phone number', '^\d{11}$');

-- Insert the personal IDs and mobile phone numbers of the people.
INSERT INTO has_id (id_type, person, value, valid_from) VALUES
    (1, 1, '123456200508071234', '2021-09-21'),
    (1, 2, '123456199501021234', '2024-12-01'),
    (1, 3, '123456196311131234', '1983-10-03'),
    (2, 1, '22222222222',        '2020-09-12'),
    (2, 2, '11111111111',        '2012-07-30'),
    (2, 3, '44444444444',        '2012-07-30');

-- Provide an address for each person.
INSERT INTO address (person, country, province, city,
                     district, postal_code, street_address) VALUES
    (1, 'DE', 'SN', 'Chemnitz', 'Zentrum', '09111', 'Rathaus'),
    (2, 'CN', 'AH', 'Hefei', 'Jinkaiqu', '230601', 'Hefei University'),
    (3, 'US', 'NY', 'New York', 'Manhattan', '10036', 'Times Square');
