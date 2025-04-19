/* Insert a wrong row into tables for A-|o-----o|-B relationship. */

-- Create an error in the relationships between the A and B rows.
UPDATE a SET b = 3 where id = 4;
