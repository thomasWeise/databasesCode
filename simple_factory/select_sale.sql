/* Extract some information from our database using the view 'sale'. */

-- Get the total sales per customer.
SELECT customer, SUM(amount * price) AS per_customer_sale
    FROM sale GROUP BY customer ORDER BY customer;

-- Get the total sales per product.
SELECT product, SUM(amount) AS amount,
    SUM(amount * price) AS per_product_sale
    FROM sale GROUP BY product ORDER BY product;
