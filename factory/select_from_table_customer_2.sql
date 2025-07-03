/* Extract information from the table customer. */

-- Which customers are domestic, i.e., live in China?
SELECT name, address ILIKE '%china%' as domestic FROM customer;
