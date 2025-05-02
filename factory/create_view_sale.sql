/* Create a view showing the sales information. */

-- We combine the three tables customer, product, and demand.
-- Basically, for each row in 'demand', we find the corresponding rows
-- in the 'customer' and 'product' tables (via the INNER JOIN).
-- This gives us one long row with all the information for one 'demand'.
-- We now choose only some elements of this long row and rename them.
-- We extract the name of the customer combined with their phone number
-- and refer to it "customer_name".
-- We extract the name of the product and refer to it as "product_name".
-- We also print the "amount" from each customer demand and the price.
-- We also print when the purchase as made
CREATE VIEW sale AS
    SELECT customer.name || ', ' || customer.phone AS customer_name,
           product.name AS product_name, product.price AS price,
           demand.amount AS amount, demand.ordered as ordered
    FROM demand INNER JOIN customer ON (customer.id = demand.customer)
                INNER JOIN product ON (product.id = demand.product)
    ORDER BY customer_name, ordered, product_name, price, amount;

-- We can use the view as if it was a table!
SELECT * from sale;
