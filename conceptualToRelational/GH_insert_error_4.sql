/* Can we insert a G that is related to a H related to another G? */

-- H with id 4 is already related to G with id 3.
-- Can we make it point to the new G row instead?
WITH g_new AS (INSERT INTO g (fkhid, x) VALUES (4, '444')
        RETURNING gid, fkhid)
    UPDATE h SET fkgid = g_new.gid FROM g_new WHERE hid = fkhid;
