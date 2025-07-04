/* Get the demands per customer. */

-- List all demand IDs for each customer.
-- LEFT JOIN: 'Bobbo' also appears once, with a NULL demand.
SELECT customer.name AS name, demand.id AS demand_id FROM customer
    LEFT JOIN demand ON (customer.id = demand.customer)
    ORDER BY name;
