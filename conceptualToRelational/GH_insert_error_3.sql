/* Can we insert a G that is related to a H related to another G? */

-- H with id 4 is already related to G with id 3.
-- Can we make our new G row point to it as its "primary H" anyway?
INSERT INTO g (fkhid, x) VALUES (4, '999');
