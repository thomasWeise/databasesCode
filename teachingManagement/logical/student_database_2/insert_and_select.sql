/** Insert data into the student database and join the two tables. */

-- Insert several student records.
INSERT INTO student (student_id, national_id, full_name, salutation,
                     address, date_of_birth) VALUES
    ('1234567890', '123456199501021234', 'Bibbo', 'The Bib-Man',
     'Hefei, China', '1995-01-02'),
    ('1234567891', '123456200508071234', 'Bebbo', 'Bebbo Machine',
     'Chemnitz, Germany', '2005-08-07');

-- Insert several mobile phone numbers
INSERT INTO mobile (phone, student) VALUES
    ('11111111111', '1234567890'), ('22222222222', '1234567891'),
    ('33333333333', '1234567890');

-- Print the mobile phone numbers of the students.
SELECT student.full_name, mobile.phone, mobile.id FROM mobile
    INNER JOIN student ON mobile.student = student.student_id;
