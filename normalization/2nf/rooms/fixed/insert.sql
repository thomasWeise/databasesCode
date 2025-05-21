/** Insert data into the database. */

-- Insert several room records.
INSERT INTO building (building_number, building_name, address) VALUES
    ('36', 'CS Teaching Building', 'South Campus II'),
    ('10', 'Language Teaching Building', 'South Campus 1'),
    ('53', 'Comprehensive Experimental Building', 'South Campus 2'),
    ('7', 'Main Teaching Building', 'South Campus 1');

-- Insert several room records.
INSERT INTO room (building_number, room_number, room_name,
                  capacity) VALUES
    ('36', '305', 'Meeting Room', 40),
    ('36', '105', 'Lecture Room 1', 80),
    ('10', '100', 'Teaching Room A', 30),
    ('10', '102', 'Teaching Room B', 30),
    ('53', '904a', 'Office 1', 10),
    ('53', '904b', 'Cluster Room', 3),
    ('7', '200', 'Auditorium', 120),
    ('36', '106', 'Lecture Room 2', 80);
