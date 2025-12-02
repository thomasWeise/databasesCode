-- Insert into the passenger table.
INSERT INTO passenger
    (name,           date_of_birth, address)
VALUES
    ('Frank Pippo',   '1968-06-07', 'Osnabrück, Germany'),
    ('Jessica Peppo', '2008-03-05', 'London, UK'),
    ('Malik Poppo',   '1967-01-31', 'Chemnitz, Germany'),
    ('Lars Peppa',    '1983-03-09', 'Hefei, China'),
    ('Dieter Pappa',  '1991-11-15', 'Dresden, Germany'),
    ('Anne Pippi',    '1972-10-22', 'Prague, Czech Republic'),
    ('Liz Pappo',     '1993-06-12', 'Vienna, Austria')
RETURNING *;
