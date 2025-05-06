/** Insert data into the database. */

-- Insert several address records.
INSERT INTO address (address) VALUES
    ('Hefei University, Hefei 230601 Jinkaiqu, Hefei, Anhui, China'),
    ('Am Rathaus 1, 09111 Zentrum, Chemnitz, Sachsen, Deutschland'),
    ('Canal Street 4, Chinatown, New York, NY, USA'),
    ('West Street, Licheng District, Quanzhou 362002, Fujian, PRC'),
    ('合肥大学南艳湖校区 中国安徽省合肥市230601蜀山区经济技术开发区锦绣大道99号');

-- Create the student records.
INSERT INTO student (name, address) VALUES
    ('Bibbo', 1), ('Bebbo', 2), ('Bibbi', 3), ('Babbo', 4), ('Bobbo', 5);
