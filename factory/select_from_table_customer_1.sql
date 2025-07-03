/* Extract information from the table customer. */

-- Try to find customers who may be living in France.
SELECT name, address FROM customer WHERE address LIKE '%France%';
