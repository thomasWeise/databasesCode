/* Try to change the id of a product referenced elsewhere. */
-- Product id = 7 is used in one demand record.
-- It therefore cannot be changed to 20.
UPDATE product SET id = 20 WHERE id = 7 RETURNING *;
