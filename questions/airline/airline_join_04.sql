SELECT pilot.id AS id, pilot.name AS name,
       MAX(airplane_type.speed) AS max_speed
   FROM flight_date
   INNER JOIN pilot     ON pilot.id             = flight_date.pilot
   INNER JOIN airplane  ON flight_date.airplane = airplane.tail_number
   INNER JOIN airplane_type ON airplane_type.id = airplane.airplane_type
   GROUP BY pilot.id, pilot.name;
