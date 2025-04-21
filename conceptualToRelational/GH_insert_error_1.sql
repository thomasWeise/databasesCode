/* Trying to insert data step-by-step. */

INSERT INTO g (x, h) VALUES ('456', 3);  -- would get id 3
INSERT INTO relate_g_and_h (g, h) VALUES (3, 3);
