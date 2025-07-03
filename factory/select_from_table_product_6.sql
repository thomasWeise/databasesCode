/* Extract information from the table product. */

-- Get the average price per "shoe" product.
SELECT 'Shoe' AS kind, AVG(price) AS mean_price
    FROM product WHERE name LIKE '%Shoe%';
