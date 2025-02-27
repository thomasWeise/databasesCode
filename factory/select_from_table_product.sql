/* Print some data from the table product. */

-- List the names and prices of all purses.
SELECT name, price from product WHERE name LIKE '%Purse%';

-- Order anything that is not a shoe in terms of grams per yuan.
SELECT name, weight / price as g_per_yuan from product
  ORDER BY g_per_yuan DESC LIMIT 5;

-- Get the average price per product type.
SELECT type, AVG(price) FROM
  (SELECT 'Shoe' as type, price from product WHERE name LIKE '%Shoe%'
   UNION
   SELECT 'Purse' as type, price from product WHERE name LIKE '%Purse%')
GROUP BY type;
