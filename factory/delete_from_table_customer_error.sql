/* Try to delete customer Bebbo. */
-- Customer Bebbo has id = 2. However, he as a demand record referencing
-- him. So he cannot be deleted.
DELETE FROM customer WHERE id = 2  RETURNING id, name;
