-- Insert into the pilot table.
INSERT INTO pilot
    (name,    flight_hours, qualification, date_of_birth)
VALUES
    ('Fred Bippo',     400,  'Pilot',       '2000-01-12'),
    ('Jane Beppo',    2200,  'Chief Pilot', '1995-03-21'),
    ('Eugene Boppo',  1760,  'Chief Pilot', '1992-11-06'),
    ('Mary Beppa',    3310,  'Chief Pilot', '1987-08-15'),
    ('Jake Bappa',     125,  'Pilot',       '1997-02-28'),
    ('Aurelia Bippi',  833,  'Pilot',       '1983-09-11'),
    ('Luke Bappo',     313,  'Pilot',       '1994-04-25')
RETURNING *;
