/* Get the number of demands per customer. */

-- Now we count the demands.
SELECT customer.name AS name, COUNT(demand.id) AS demands FROM customer
    LEFT JOIN demand ON (customer.id = demand.customer)
    GROUP BY name ORDER BY name;
