-- Create the flight table of the airline example.
CREATE TABLE flight (
    flight_number    VARCHAR(8)    NOT NULL PRIMARY KEY,
    start_airport    VARCHAR(20)   NOT NULL,
    start_time       TIME          NOT NULL,
    dest_airport     VARCHAR(20)   NOT NULL,
    duration         INTERVAL      NOT NULL,
    CONSTRAINT duration_ok   CHECK (duration      > '10 minutes'),
    CONSTRAINT flight_num_ok CHECK (flight_number ~ '^[A-Z]+\d{1,5}$'),
    CONSTRAINT airports_ok   CHECK (dest_airport != start_airport)
);
