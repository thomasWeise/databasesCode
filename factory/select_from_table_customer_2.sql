/* Extract information from the table customer. */

-- Count how many domestic and foreign customers we have.
SELECT COUNT(*), address ILIKE '%china%' as domestic FROM customer
    GROUP BY domestic;
