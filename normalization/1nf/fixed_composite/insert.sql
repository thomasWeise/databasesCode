/** Insert data into the database. */

-- Insert several address records.
INSERT INTO address (
        country, province, city, postal_code, street_address) VALUES
    ('China', 'Anhui', 'Hefei', '230601', 'Jinkaiqu, Hefei University'),
    ('Deutschland', 'Sachsen', 'Chemnitz', '09111', 'Am Rathaus 1'),
    ('USA', 'NY', 'New York', '10013', 'Canal Street 4, Chinatown'),
    ('PRC', 'Fujian', 'Quanzhou', '362002', 'West Street'),
    ('P.R.C.', NULL, 'Beijing', '100084', 'Tsinghua University');

-- Create the student records.
INSERT INTO student (name, address) VALUES
    ('Bibbo', 1), ('Bebbo', 2), ('Bibbi', 3), ('Babbo', 4), ('Bebbe', 5);
