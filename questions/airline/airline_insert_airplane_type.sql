-- Insert into the airplane types table.
INSERT INTO airplane_type (name, speed) VALUES
    ('Junkers F 13', 170)           ('Douglas DC-3', 370),
    ('Messerschmitt Me 262', 870),  ('Airbus A320', 962),
) RETURNING *;
