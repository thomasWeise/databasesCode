/* Extract information from the table product. */

-- List the names and prices of all purses.
SELECT name, price FROM product WHERE name LIKE '%Purse%';

-- Get the top-five products in terms of grams per yuan.
SELECT name, weight / price AS g_per_yuan FROM product
  ORDER BY g_per_yuan DESC LIMIT 5;

-- Get the average price per product type.
SELECT 'Shoe' AS kind, AVG(price) AS mean_price
    FROM product WHERE name LIKE '%Shoe%'
UNION ALL SELECT 'Purse' AS kind, AVG(price) AS mean_price
    FROM product WHERE name LIKE '%Purse%';
