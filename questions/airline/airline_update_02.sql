UPDATE booking
    SET price = price * 2, class = 1
    WHERE passenger IN (
        SELECT id FROM passenger
            WHERE name = 'Jessica Peppo')
    AND (class = 2) AND (flight_date = 1)
RETURNING *;
