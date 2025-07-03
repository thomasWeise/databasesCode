/* Extract information from the table product. */

-- Get the average price for both product types.
SELECT 'Shoe' AS kind, AVG(price) AS mean_price
    FROM product WHERE name LIKE '%Shoe%'
UNION ALL SELECT 'Purse' AS kind, AVG(price) AS mean_price
    FROM product WHERE name LIKE '%Purse%';
