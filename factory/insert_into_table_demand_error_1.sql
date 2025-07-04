/* Store some incorrect data into the table 'demand'. */

-- Trying to insert an order with an invalid product ID.
INSERT INTO demand (customer, product, amount, ordered)
VALUES (1, 77, 12, '2024-11-21');
