SELECT tail_number, airplane_type.name as type, airplane_type.speed
    FROM airplane
    INNER JOIN airplane_type ON airplane_type.id == airplane.airplane_type
    WHERE airplane_type.speed > 400;
