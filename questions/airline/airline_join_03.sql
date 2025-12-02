SELECT DISTINCT pilot.id AS id, pilot.name AS name
    FROM flight_date
    INNER JOIN flight    ON flight.flight_number = flight_date.flight
    INNER JOIN pilot     ON pilot.id             = flight_date.pilot
    WHERE flight.dest_airport = 'BER';
