/** Insert data into the database. */

-- Insert several student + parent records.
INSERT INTO student (student_id, student_name, parent_name,
                     parent_mobile) VALUES
    ('1234567890', 'Bibbo',   'Boddo', '55544466677'),
    ('1234567891', 'Bebbo',   'Balla', '77788811122'),
    ('1234567892', 'Bibboto', 'Boddo', '55544466677'),
    ('1234567894', 'Bibboba', 'Boddo', '55544466677');
