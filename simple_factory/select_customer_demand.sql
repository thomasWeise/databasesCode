/* Get the number of demands per customer. */

-- List all demand IDs for each customer.
-- LEFT JOIN: 'Bobbo' also appears once, with a NULL demand.
SELECT customer.name as customer, demand.id as demand_id FROM
    customer LEFT JOIN demand ON (customer.id = demand.customer)
    ORDER BY customer.name;

-- Now we count the demands.
SELECT customer.name as customer, COUNT(demand.id) as demands FROM
    customer LEFT JOIN demand ON (customer.id = demand.customer)
    GROUP BY customer.name ORDER BY customer.name;
