/* Get the total sales per product. */
SELECT product_name, SUM(amount) AS total_amount,
    SUM(amount * price) AS product_sale FROM sale
    GROUP BY product_name ORDER BY product_sale DESC;
