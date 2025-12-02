-- Insert into the flight table.
INSERT INTO flight (flight_number, start_airport, start_time,
                    dest_airport, duration)
VALUES ('XA1843', 'PEK', '13:30', 'HFE',  '1 hour  55 minutes'),
       ('XA1844', 'HFE', '16:15', 'PEK',  '2 hours'),
       ('XA1813', 'PEK', '07:55', 'HFE',  '1 hour  55 minutes'),
       ('XA1814', 'HFE', '10:45', 'PEK',  '2 hours 15 minutes'),
       ('XU489',  'PEK', '03:20', 'BER',  '9 hours 10 minutes'),
       ('XU490',  'BER', '12:55', 'PEK', '10 hours 20 minutes')
RETURNING *;
