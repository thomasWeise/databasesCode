-- Insert into the airplane table.
INSERT INTO airplane (tail_number, airplane_type) VALUES
    ('B-1000', 4),  ('B-1001', 3),  ('B-1002', 2),  ('B-1003', 1),
    ('D-2888', 3),  ('D-2889', 2),  ('D-2890', 2),  ('D-8891', 3),
    ('F-4444', 1),  ('F-5555', 4),  ('F-6666', 1),  ('F-7777', 4)
RETURNING *;
