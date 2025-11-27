/** Find all the rooms available in South Campus 2. */

-- Several rooms are missing, because the data is inconsistent:
-- Their address was 'South Campus II'.
SELECT room.building_number, room_number FROM room
    INNER JOIN building ON
        room.building_number = building.building_number
    WHERE address = 'South Campus 2';

-- Now we get these rooms.
SELECT room.building_number, room_number FROM room
    INNER JOIN building ON
        room.building_number = building.building_number
    WHERE address = 'South Campus 2' OR address = 'South Campus II';
