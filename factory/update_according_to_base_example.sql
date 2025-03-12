/* Perform the changes from the LibreOffice 'Base' Example. */

-- Insert 1 order into our demand table.
INSERT INTO demand (customer, product, amount, ordered)
VALUES (4, 7, 11, '2025-04-12'),  -- manual insertion
       (1, 4,  7, '2025-05-07');  -- inserted via form
