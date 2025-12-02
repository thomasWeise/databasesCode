SELECT id, qualification, flight_hours FROM pilot
    WHERE qualification IN ('Captain', 'Chief Pilot') AND (flight_hours > 600);
