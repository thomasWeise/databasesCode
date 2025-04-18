/** Insert some rows into the student database. */

-- Insert records that can be inserted correctly.
INSERT INTO student (student_id, national_id, name, address, mobile,
                     date_of_birth) VALUES
    ('1234567890', '123456199501021234', 'Bibbo', 'Hefei, China',
     '12345678901', '1995-01-02'),
    ('1234567891', '123456200508071234', 'Bebbo', 'Chemnitz, Germany',
     '12345678902', '2005-08-07');

-- Print the records that were inserted.
SELECT student_id, name from student;

-- Try inserting an invalid record: The date of birth is way too early.
INSERT INTO student (student_id, national_id, name, address, mobile,
                     date_of_birth) VALUES
    ('1111111111', '123456022501011234', 'Liu Hui', 'Zouping, Shandong',
     '12345678902', '0225-01-01');
