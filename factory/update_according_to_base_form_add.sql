/* Perform the changes from the LibreOffice 'Base' Example Form Add. */

-- Insert 1 order into our demand table in the same way we did using the
-- form in LibreOffice Base.
INSERT INTO demand (customer, product, amount, ordered)
VALUES (1, 4,  7, '2025-05-07');  -- inserted via form
