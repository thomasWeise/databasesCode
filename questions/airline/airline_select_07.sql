SELECT id, qualification, flight_hrs FROM pilot
    WHERE qualification IN ('Captain', 'Chief Pilot') AND (flight_hours > 600);
