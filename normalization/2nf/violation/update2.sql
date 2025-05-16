/** Change the name of Building 36 to Computer Science Building. */

UPDATE building_room SET building_name = 'Computer Science Building'
    WHERE address = 'South Campus 2' AND building_number = '36'
    RETURNING building_number, building_name, room_number;
