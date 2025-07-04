/* Store some incorrect data into the table 'demand'. */

-- Trying to insert an order with an invalid date.
INSERT INTO demand (customer, product, amount, ordered)
VALUES (1,  7, 12, '1024-11-21');
