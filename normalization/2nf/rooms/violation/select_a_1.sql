/** Find all the rooms available in South Campus 2. */

-- Several rooms are missing, because the data is inconsistent:
-- Their address was 'South Campus II'.
SELECT building_number, room_number FROM building_room
    WHERE address = 'South Campus 2';
