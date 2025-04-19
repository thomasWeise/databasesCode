/* Insert a wrong row into tables for A-|o-----o|-B relationship. */

-- It is impossible to create an error by relating an entity of type A
-- to an entity of type B if that A-entity is already related.
-- If we update the table to change the relationship of that A, then
-- this will simply overwrite the old relationship.
-- No entity of type A can ever assigned to more than one entity of
-- type B.
UPDATE a SET b = 2 where id = 1;
