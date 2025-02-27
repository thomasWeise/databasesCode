/* Extract information from the table product. */

-- List the names and prices of all purses.
SELECT name, price FROM product WHERE name LIKE '%Purse%';

-- Order anything that is not a shoe in terms of grams per yuan.
SELECT name, weight / price AS g_per_yuan from product
  ORDER BY g_per_yuan DESC LIMIT 5;

-- Get the average price per product type.
SELECT kind, AVG(price) FROM
  (SELECT 'Shoe' as kind, price from product WHERE name LIKE '%Shoe%'
   UNION
   SELECT 'Purse' as kind, price from product WHERE name LIKE '%Purse%')
GROUP BY kind;
