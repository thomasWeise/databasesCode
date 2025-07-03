/* Extract information from the table product. */

-- Sort products by "grams per yuan" in a descending fashion.
SELECT name, weight / price AS g_per_yuan FROM product
  ORDER BY g_per_yuan DESC;
