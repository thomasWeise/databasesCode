/** Find the parent Boddo and change his name to Böddö. */

-- Change the name of the parent with mobile 55544466677 to Böddö.
UPDATE parent SET parent_name = 'Böddö'
    WHERE parent_mobile = '55544466677'
    RETURNING parent_name, parent_mobile;

-- Get the names of all students whose parent has mobile 55544466677.
SELECT student_name, parent_name FROM student
    INNER JOIN parent ON student.parent_mobile = parent.parent_mobile
    WHERE student.parent_mobile = '55544466677';
