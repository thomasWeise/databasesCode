/** Insert data into the database. */

-- Insert several address records.
INSERT INTO address (
        country, province, city, postal_code, street_address) VALUES
    ('China', 'Anhui', 'Hefei', '230601', 'Jinkaiqu, Hefei University'),
    ('China', 'Anhui', 'Hefei', '230026', 'USTC'),
    ('Deutschland', 'Sachsen', 'Chemnitz', '09111', 'Am Rathaus 1'),
    ('USA', 'NY', 'New York', '10013', 'Canal Street 4, Chinatown'),
    ('Deutschland', 'Sachsen', 'Chemnitz', '09111', 'TU Chemnitz'),
    ('PRC', 'Fujian', 'Quanzhou', '362002', 'West Street'),
    ('P.R.C.', NULL, 'Beijing', '100084', 'Tsinghua University'),
    ('Spain', 'Andalusia', 'Granada', '18009', 'Alhambra de Granada');

-- Create the five student records.
INSERT INTO student (name) VALUES
    ('Bibbo'), ('Bebbo'), ('Bibbi'), ('Babbo'), ('Bebbe');

-- Establish the relationship to the addresses.
INSERT INTO student_address (student, address) VALUES
    (1, 1), (1, 2), (2, 3), (3, 4), (4, 5), (4, 6), (5, 7), (5, 8);
