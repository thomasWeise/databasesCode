/* Query the sales information. */

-- We combine the three tables customer, product, and demand.
-- Basically, for each row in 'demand', we find the corresponding rows
-- in the 'customer' and 'product' tables (via the INNER JOIN).
-- This gives us one long row with all the information for one 'demand'.
-- We now choose only some elements of this long row and rename them.
-- We extract the name of the customer and refer to it "customer_name".
-- We extract the name of the product and refer to it as "product_name".
-- We also print the "amount" from each customer demand and the price.
-- We also print when the purchase as made.
SELECT customer.name  AS customer_name, product.name  AS product_name,
       product.price  AS price,         demand.amount AS amount,
       demand.ordered AS ordered
FROM demand INNER JOIN customer ON (customer.id = demand.customer)
            INNER JOIN product  ON (product.id  = demand.product)
ORDER BY customer_name, ordered, product_name, price, amount;
