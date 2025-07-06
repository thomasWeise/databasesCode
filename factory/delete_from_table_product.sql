/* We delete an entry from the table 'product' in our factory database. */

-- We got 11 products.
SELECT COUNT(*) as number_of_products from product;

-- Delete the 'Shoe, Size 36' ... nobody ever bought it.
DELETE FROM product WHERE id = 1  -- The id of 'Shoe, Size 36' is 1.
RETURNING id, name;  -- get the id and name of the deleted row.

-- We now we got only 10 products.
SELECT COUNT(*) as number_of_products from product;
