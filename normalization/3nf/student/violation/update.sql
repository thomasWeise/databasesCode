/** Find the parent Boddo and change his name to Böddö. */

-- Get the names of all students whose parent has mobile 55544466677.
SELECT student_name, parent_name FROM student
    WHERE parent_mobile = '55544466677';

-- Change the name of the parent with mobile 55544466677 to Böddö.
UPDATE student SET parent_name = 'Böddö'
    WHERE parent_mobile = '55544466677'
    RETURNING student_name, parent_name;
