/** Insert data into the database. */

-- Insert several address records.
INSERT INTO address (full_address) VALUES
    ('Hefei University, Hefei 230601 Jinkaiqu, Hefei, Anhui, China'),
    ('Am Rathaus 1, 09111 Zentrum, Chemnitz, Sachsen, Deutschland'),
    ('Canal Street 4, Chinatown, New York, NY, USA'),
    ('West Street, Licheng District, Quanzhou 362002, Fujian, PRC');

-- Create the student records.
INSERT INTO student (name, address) VALUES
    ('Bibbo', 1), ('Bebbo', 2), ('Bibbi', 3), ('Babbo', 4);
