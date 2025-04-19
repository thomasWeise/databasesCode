/* Insert a wrong row into tables for A-|o-----o|-B relationship. */

-- Create an error in the relationships between the A and B rows.
-- This fails because an A entry is already assigned to an B entry.
-- The A entity with ID 1 is already related to B entity with ID 1.
INSERT INTO relate_a_and_b (a, b) VALUES (1, 2);
