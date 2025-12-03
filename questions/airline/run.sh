#!/bin/bash

# Run all the scripts of the factory example (but do not clean up afterwards).

# strict error handling
set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o nounset   # set -u : exit the script if you try to use an uninitialized variable
set -o errexit   # set -e : exit the script if any statement returns a non-true return value

# The directory where the example is located.
exampleDir="$(readlink -f "$(dirname "$0")")"
cd "$exampleDir"

#: the postgre sql script
postgres="$exampleDir/../../_scripts_/postgres.sh"

"$exampleDir/cleanup.sh"

"$postgres" "$exampleDir" airline_database.sql

"$postgres" "$exampleDir" airline_table_airplane_type.sql airline
"$postgres" "$exampleDir" airline_table_airplane.sql airline
"$postgres" "$exampleDir" airline_table_flight.sql airline
"$postgres" "$exampleDir" airline_table_pilot.sql airline
"$postgres" "$exampleDir" airline_table_passenger.sql airline
"$postgres" "$exampleDir" airline_table_flight_date.sql airline
"$postgres" "$exampleDir" airline_table_booking.sql airline
