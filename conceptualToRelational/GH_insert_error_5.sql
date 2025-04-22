/* Can we change the relationship of a H away from its primary G? */

-- H with id 1 is used as "primary H" for G with ID 1.
-- Can we make it point to another G?
UPDATE h SET g = 3 WHERE id = 1;
