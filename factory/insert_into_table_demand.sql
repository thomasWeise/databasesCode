/* Store some data into the table 'demand'. */

-- Print all the contents from table 'demand': Nothing.
SELECT * from demand;

-- Insert 7 orders into our table.
INSERT INTO demand (customer, product, amount, ordered)
VALUES (1,  7, 12, '2024-11-21'), (2, 3, 2, '2024-12-09'),
       (3,  2,  7, '2024-12-16'), (2, 5, 7, '2024-12-30'),
       (1,  5,  3, '2025-01-05'), (2, 6, 4, '2025-01-12'),
       (3, 11, 10, '2025-01-16'), (2, 3, 6, '2025-02-05');

-- Now there are 7 rows.
SELECT * from demand;
