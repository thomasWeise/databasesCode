/* Store some data into the table 'demand'. */

-- Print all the contents from table 'demand': Nothing.
SELECT * from demand;

-- Insert 7orders into our table.
INSERT INTO demand (customer, product, amount)
VALUES (1, 7, 12), (2, 3, 2), (3, 2, 7), (2, 5, 7), (1, 5, 3),
       (2, 6, 4), (3, 11, 10), (2, 3, 6);

-- Now there are 7 rows.
SELECT * from demand;
