/* Extract some information from our database using the view 'sale'. */

-- Get the total sales per customer in 2025.
SELECT customer_name, SUM(amount * price) AS per_customer_sale FROM sale
    WHERE (ordered >= '2025-01-01') AND (ordered < '2026-01-01')
    GROUP BY customer_name ORDER BY per_customer_sale DESC;

-- Get the total sales per product in 2025.
SELECT product_name, SUM(amount) AS amount,
    SUM(amount * price) AS per_product_sale FROM sale
    WHERE (ordered >= '2025-01-01') AND (ordered < '2026-01-01')
    GROUP BY product_name ORDER BY per_product_sale DESC;
