/* Perform the changes from the LibreOffice 'Base' Example Table Add. */

-- Insert 1 order into our demand table, in the same way we manually did.
-- using the table view in LibreOffice Base.
INSERT INTO demand (customer, product, amount, ordered)
    VALUES (4, 7, 11, '2025-04-12')
    RETURNING *;
