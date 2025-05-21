/** Insert data into the database. */

-- Insert several student + parent records.
INSERT INTO student (student_id, student_national_id, student_name,
                     parent_name, parent_mobile) VALUES
    ('1234567890', '123456199501021234', 'Bibbo', 'Boddo',
     '55544466677'),
    ('1234567891', '123456200508071234', 'Bebbo', 'Balla',
     '77788811122'),
    ('1234567892', '123456199802121234', 'Bibboto', 'Boddo',
     '55544466677'),
    ('1234567894', '123456199706221234', 'Bibboba', 'Boddo',
     '55544466677');
