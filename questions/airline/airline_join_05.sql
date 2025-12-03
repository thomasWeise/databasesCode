/* Merge all the data from all the tables */
SELECT flight_number, start_date AS date, start_time AS time, start_airport AS start, duration, dest_airport AS dest, tail_number, airplane_type.name AS type, speed, pilot.name AS pilot, flight_hours AS hrs, qualification AS qual, pilot.date_of_birth AS pilot_dob, passenger.name AS passenger, passenger.date_of_birth AS passenger_dob, address, class, price
FROM booking
INNER JOIN flight_date   ON booking.flight_date  = flight_date.id
INNER JOIN passenger     ON passenger.id         = booking.passenger
INNER JOIN pilot         ON pilot.id             = flight_date.pilot
INNER JOIN airplane      ON flight_date.airplane = airplane.tail_number
INNER JOIN airplane_type ON airplane_type.id     = airplane.airplane_type
INNER JOIN flight        ON flight.flight_number = flight_date.flight
ORDER BY start_date, start_time, flight_number, start_airport, passenger;
