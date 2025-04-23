/* Can we insert a M that is related to a N related to another M? */

-- N with id 4 is already related to M with id 3.
-- Can we make our new M row point to it as its "primary N" anyway?
INSERT INTO m (fknid, x) VALUES (4, '888');
