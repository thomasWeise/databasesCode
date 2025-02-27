/* Extract information from the table product. */

-- List the names and prices of all purses.
SELECT name, price FROM product WHERE name LIKE '%Purse%';

-- Order anything that is not a shoe in terms of grams per yuan.
SELECT name, weight / price AS g_per_yuan from product
  ORDER BY g_per_yuan DESC LIMIT 5;

-- Get the average price per product type.
SELECT 'Shoe' AS kind, AVG(price) AS mean_price
    FROM product WHERE name LIKE '%Shoe%'
UNION SELECT 'Purse' AS kind, AVG(price) AS mean_price
    FROM product WHERE name LIKE '%Purse%';
