/* Create a view showing the sales information */

-- Delete the view if it already exists.
DROP VIEW IF EXISTS sale;

-- We combine the three tables customer, product, and demand.
-- Basically, for each row in 'demand', we find the corresponding rows
-- in the 'customer' and 'product' tables (via the INNER JOIN).
-- This gives us one long row with all the information for one 'demand'.
-- We now choose only some elements of this long row and rename them.
-- We extract the name of the customer and refer to it "customer".
-- We extract the name of the product and refer to it as "product".
-- We also print the "amount" from each customer demand and the price.
CREATE VIEW sale AS
    SELECT customer.name AS customer, product.name AS product,
           product.price AS price, demand.amount AS amount
    FROM demand INNER JOIN customer ON (customer.id = demand.customer)
                INNER JOIN product ON (product.id = demand.product)
    ORDER BY customer.name, product, amount;

-- We can use the view as if it was a table!
SELECT * from sale;
