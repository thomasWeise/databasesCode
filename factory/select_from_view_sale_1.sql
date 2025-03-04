/* Extract some information from our database using the view 'sale'. */

-- Get the total sales per customer.
SELECT customer_name, SUM(amount * price) AS per_customer_sale FROM sale
    GROUP BY customer_name ORDER BY per_customer_sale DESC;

-- Get the total sales per product.
SELECT product_name, SUM(amount) AS amount,
    SUM(amount * price) AS per_product_sale FROM sale
    GROUP BY product_name ORDER BY per_product_sale DESC;
