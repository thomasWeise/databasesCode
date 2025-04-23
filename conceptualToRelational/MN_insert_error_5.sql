/* Can we change the relationship of a N away from its primary M? */

-- N with id 1 is used as "primary N" for M with ID 1.
-- Can we make it point to another M?
UPDATE n SET fkmid = 3 WHERE nid = 1;
