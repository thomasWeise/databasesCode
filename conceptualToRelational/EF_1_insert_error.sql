/* Insert a wrong row into tables for E-|o-----o<-F relationship. */

-- Create an error in the relationships between the E and F rows.
-- This fails because an F entry is already assigned to an E entry.
-- The F entity with ID 2 is already related to E entity with ID 1.
INSERT INTO relate_e_and_f (e, f) VALUES (3, 2);
