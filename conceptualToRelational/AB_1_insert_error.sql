/* Insert a wrong row into tables for A-|o-----o|-B relationship. */

-- Create an error in the relationships between the A and B rows.
INSERT INTO relate_a_and_b (a, b) VALUES (4, 3);
