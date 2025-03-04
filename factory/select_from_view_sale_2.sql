/* Extract information from 'sale' but limit the date range. */

-- Get the total sales per customer in 2025.
SELECT customer_name, SUM(amount * price) AS customer_sale FROM sale
    WHERE (ordered >= '2025-01-01') AND (ordered < '2026-01-01')
    GROUP BY customer_name ORDER BY customer_sale DESC;

-- Get the total sales per product in 2025.
SELECT product_name, SUM(amount) AS total_amount,
    SUM(amount * price) AS product_sale FROM sale
    WHERE (ordered >= '2025-01-01') AND (ordered < '2026-01-01')
    GROUP BY product_name ORDER BY product_sale DESC;
