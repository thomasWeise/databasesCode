SELECT id, qualification, flight_hrs FROM pilot
    WHERE qualification IN ('captain', 'chiefpilot') AND (flight_hrs > 1500);
