/** Change the name of parent Boddo to Böddö. */

SELECT student_name, parent_name FROM student WHERE parent_mobile = '55544466677';

UPDATE student SET parent_name = 'Böddö'
    WHERE parent_mobile = '55544466677'
    RETURNING student_name, parent_name;
