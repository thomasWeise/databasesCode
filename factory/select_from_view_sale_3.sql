/* Extract again information from our database using the view 'sale'. */

-- Get the total sales per customer.
SELECT customer_name, SUM(amount * price) AS customer_sale FROM sale
    GROUP BY customer_name ORDER BY customer_sale DESC;

-- Get the total sales per product.
SELECT product_name, SUM(amount) AS total_amount,
    SUM(amount * price) AS product_sale FROM sale
    GROUP BY product_name ORDER BY product_sale DESC;
