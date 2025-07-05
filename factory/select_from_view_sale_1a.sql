/* Get the total sales per customer. */
SELECT customer_name, SUM(amount * price) AS customer_sale FROM sale
    GROUP BY customer_name ORDER BY customer_sale DESC;
