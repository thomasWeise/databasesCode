/** Delete room 904a and 904b, which deletes the entire building. */

-- Get the list of all buildings.
SELECT building_number, building_name FROM building;

-- Delete rooms 904a and 904b in building 53, which deletes building 53.
DELETE FROM room WHERE building_number = '53'
    AND room_number LIKE '904%'
    RETURNING building_number, room_number;

-- Get the list of all buildings again: Building 53 disappeared.
SELECT building_number, building_name FROM building;
