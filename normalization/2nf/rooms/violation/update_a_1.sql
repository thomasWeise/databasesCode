/** Find the all rooms available in South Campus 2. */

-- Several rooms are missing, because the data is inconsistent:
-- Their address was 'South Campus II'.
SELECT building_number, room_number FROM building_room
    WHERE address = 'South Campus 2';

-- Now we get these rooms.
SELECT building_number, room_number FROM building_room
    WHERE address = 'South Campus 2' OR address = 'South Campus II';

-- We can fix this problem with an UPDATE instruction.
UPDATE building_room SET address = 'South Campus 2'
    WHERE address = 'South Campus II' RETURNING building_number;
