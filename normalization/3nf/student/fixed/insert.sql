/** Insert data into the database. */

-- Insert several parent records.
INSERT INTO parent (parent_name, parent_mobile) VALUES
    ('Boddo', '55544466677'),
    ('Balla', '77788811122');

-- Insert several student records that are linked to parent records.
INSERT INTO student (student_id, student_national_id, student_name,
                     parent_mobile) VALUES
    ('1234567890', '123456199501021234', 'Bibbo', '55544466677'),
    ('1234567891', '123456200508071234', 'Bebbo', '77788811122'),
    ('1234567892', '123456199802121234', 'Bibboto', '55544466677'),
    ('1234567894', '123456199706221234', 'Bibboba', '55544466677');
