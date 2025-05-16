/** Insert data into the database. */

-- Delete rooms 904a and 904b in building 53.
DELETE FROM building_room WHERE building_number = '53'
    AND room_number LIKE '904%'
    RETURNING building_number, room_number;
