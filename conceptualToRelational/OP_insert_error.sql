/* Try to create a relationship that already exists. */

-- The relationship (1, 1) already exists, so this will fail.
INSERT INTO relate_o_and_p (fkoid, fkpid) VALUES (1, 1);
