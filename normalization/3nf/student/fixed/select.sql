/** Get the names of all parents of all the students. */

SELECT student_name, parent_name FROM student
    INNER JOIN parent ON student.parent_mobile = parent.parent_mobile;
