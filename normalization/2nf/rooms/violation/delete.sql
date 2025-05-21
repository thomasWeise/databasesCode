/** Delete room 904a and 904b, which doesn't delete the building 53. */

-- Get the list of all buildings.
SELECT DISTINCT building_number, building_name FROM building_room;

-- Delete rooms 904a and 904b in building 53.
DELETE FROM building_room WHERE building_number = '53'
    AND room_number LIKE '904%'
    RETURNING building_number, room_number;

-- Get the list of all buildings again: Building 53 is still there.
SELECT DISTINCT building_number, building_name FROM building_room;
