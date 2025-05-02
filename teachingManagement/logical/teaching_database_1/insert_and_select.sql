/** Insert data into the teaching database and then merge it. */

-- Insert several student records.
INSERT INTO student (name) VALUES ('Bibbo'), ('Bebbo'), ('Bebba');

-- Insert several professor records.
INSERT INTO professor (name) VALUES ('Weise'), ('Bobbo');

-- Insert several module records.
INSERT INTO module (title) VALUES ('Python'), ('Databases'), ('Java');

-- Create the courses, i.e., the instances of the modules in semesters.
INSERT INTO course (professor, module, semester) VALUES
    (1, 1, 20252), (1, 2, 20252), (2, 3, 20261), (2, 3, 20262);

-- Enroll students into the courses.
INSERT INTO enrolls (student, course) VALUES
    (1, 1), (1, 2), (1, 3), (2, 1), (2, 4), (3, 2), (3, 3);

-- Print the enrollment information.
SELECT student.name AS student, professor.name AS teacher,
       module.title AS module, semester FROM enrolls
    INNER JOIN student   ON enrolls.student  = student.id
    INNER JOIN course    ON enrolls.course   = course.id
    INNER JOIN professor ON course.professor = professor.id
    INNER JOIN module    ON course.module    = module.id
    ORDER BY student.name, professor.name, module.title, semester;
