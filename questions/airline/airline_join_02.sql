SELECT passenger.name AS name, flight.start_airport, flight.dest_airport,
       flight_date.start_date
    FROM flight_date
    INNER JOIN flight    ON flight.flight_number = flight_date.flight
    INNER JOIN booking   ON booking.flight_date  = flight_date.id
    INNER JOIN passenger ON passenger.id         = booking.passenger
    WHERE passenger.name ILIKE '%Pepp%';
