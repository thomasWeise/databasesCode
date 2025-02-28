/* Extract information from the table customer. */

-- Try to find customers who may be living in France.
SELECT name, address FROM customer WHERE address LIKE '%France%';

-- Count how many domestic and foreign customers we have.
SELECT COUNT(*), address ILIKE '%china%' as domestic FROM customer
    GROUP BY domestic;
