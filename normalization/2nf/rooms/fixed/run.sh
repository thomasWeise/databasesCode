#!/bin/bash

# Run all the scripts of the logical model example.

# strict error handling
set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o nounset   # set -u : exit the script if you try to use an uninitialized variable
set -o errexit   # set -e : exit the script if any statement returns a non-true return value

# The directory where the example is located.
exampleDir="$(readlink -f "$(dirname "$0")")"
cd "$exampleDir"

#: the postgre sql script
postgres="$exampleDir/../../../_scripts_/postgres.sh"

"$exampleDir/cleanup.sh"

"$postgres" "$exampleDir/generated_sql" 01_fixed_database_2001.sql
"$postgres" "$exampleDir/generated_sql" 03_public_room_table_5071.sql fixed
"$postgres" "$exampleDir/generated_sql" 04_public_building_table_5080.sql fixed
"$postgres" "$exampleDir/generated_sql" 05_public_room_building_fk_constraint_5099.sql fixed
"$postgres" "$exampleDir" insert.sql fixed
"$postgres" "$exampleDir" delete.sql fixed
"$postgres" "$exampleDir" update.sql fixed
"$postgres" "$exampleDir" update2.sql fixed
