/** Insert data into the database. */

-- Insert several room records.
INSERT INTO building_room (building_number, room_number, building_name,
                           room_name, capacity, address) VALUES
    ('36', '305', 'CS Teaching Building', 'Meeting Room', 40,
     'South Campus II'),
    ('36', '105', 'CS Teaching Building', 'Lecture Room 1', 80,
     'South Campus II'),
    ('10', '100', 'Language Teaching Building', 'Teaching Room A', 30,
     'South Campus 1'),
    ('10', '102', 'Language Teaching Building', 'Teaching Room B', 30,
     'South Campus 1'),
    ('53', '904a', 'Comprehensive Experimental Building',
     'Office 1', 10, 'South Campus 2'),
    ('53', '904b', 'Comprehensive Experimental Building',
     'Cluster Room', 3, 'South Campus 2'),
    ('7', '200', 'Main Teaching Building', 'Auditorium', 120,
     'South Campus 1'),
    ('36', '106', 'CS Teaching Building', 'Lecture Room 2', 80,
     'South Campus 2');
