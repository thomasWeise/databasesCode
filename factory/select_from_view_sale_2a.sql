/* Get the total sales per customer in 2025. */
SELECT customer_name, SUM(amount * price) AS customer_sale FROM sale
    WHERE (ordered >= '2025-01-01') AND (ordered < '2026-01-01')
    GROUP BY customer_name ORDER BY customer_sale DESC;
