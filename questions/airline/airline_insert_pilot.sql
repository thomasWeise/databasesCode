-- Insert into the pilot table.
INSERT INTO pilot
    (name,    flight_hours, qualification, date_of_birth)
VALUES
    ('Fred Bibbo',     400,  'Captain',     '2000-01-12'),
    ('Jane Bebbo',    2200,  'Chief Pilot', '1995-03-21'),
    ('Eugene Bobbo',  1760,  'Chief Pilot', '1992-11-06'),
    ('Mary Bebba',    3310,  'Chief Pilot', '1987-08-15'),
    ('Jake Babba',     125,  'Captain',     '1997-02-28'),
    ('Aurelia Bibbi',  833,  'Captain',     '1983-09-11'),
    ('Luke Babbo',     313,  'Captain',     '1994-04-25')
RETURNING *;
