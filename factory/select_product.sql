/* Print some data from the table product. */

-- List the names and prices of all purses.
SELECT name, price from product WHERE name LIKE '%Purse%';

-- Order anything that is not a shoe in terms of cost per gram.
SELECT name, width*height*depth/(1000*price) as cm³_per_yuan from product
  ORDER BY cm³_per_yuan DESC LIMIT 5;

-- Get the average price per product type.
SELECT type, AVG(price) FROM
  (SELECT 'Shoe' as type, price from product WHERE name LIKE '%Shoe%'
   UNION
   SELECT 'Purse' as type, price from product WHERE name LIKE '%Purse%')
GROUP BY type;
