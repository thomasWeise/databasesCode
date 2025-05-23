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

"$postgres" "$exampleDir/generated_sql" 01_student_database_database_2001.sql
"$postgres" "$exampleDir/generated_sql" 03_public_student_table_5071.sql student_database
"$postgres" "$exampleDir/generated_sql" 04_public_mobile_table_5081.sql student_database
"$postgres" "$exampleDir/generated_sql" 05_public_mobile_mobile_student_id_fk_constraint_5087.sql student_database
"$postgres" "$exampleDir" insert_and_select.sql student_database
