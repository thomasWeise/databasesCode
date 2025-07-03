/* Extract information from the table product. */

-- Get the top-five products in terms of grams per yuan.
SELECT name, weight / price AS g_per_yuan FROM product
  ORDER BY g_per_yuan DESC LIMIT 5;
