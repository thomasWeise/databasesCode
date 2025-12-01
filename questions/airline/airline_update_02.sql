UPDATE booking
    SET price = price * 2, class = 1
    WHERE passenger IN (
        SELECT id FROM passenger
            WHERE name = 'Bebba Coolhaus')
    AND (class = 2);
