-- Insert into the pilot table.
INSERT INTO pilot
    (name, flight_hours, qualification, date_of_birth)
VALUES
    ('Pippo',      400,  'Pilot',       '2000-01-12'),
    ('Peppo',     2200,  'Chief Pilot', '1995-03-21'),
    ('Poppo',     1760,  'Chief Pilot', '1992-11-06'),
    ('Peppa',     3310,  'Chief Pilot', '1987-08-15'),
    ('Pappa',      125,  'Pilot',       '1997-02-28'),
    ('Pippi',      833,  'Pilot',       '1983-09-11'),
    ('Pappo',      313,  'Pilot',       '1994-04-25')
RETURNING *;
