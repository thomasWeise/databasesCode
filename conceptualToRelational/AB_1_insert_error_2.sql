/* Insert a wrong row into tables for A-|o-----o|-B relationship. */

-- Create an error in the relationships between the A and B rows.
-- This fails because a B entry is already assigned to an A entry.
-- The B entity with ID 3 is already related to A entity with ID 1.
INSERT INTO relate_a_and_b (fkaid, fkbid) VALUES (4, 3);
