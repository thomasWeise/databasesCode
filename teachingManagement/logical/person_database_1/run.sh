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

"$postgres" "$exampleDir/generated_sql" 01_person_database_database_2001.sql
"$postgres" "$exampleDir/generated_sql" 03_public_person_id_counter_sequence_5071.sql person_database
"$postgres" "$exampleDir/generated_sql" 04_public_id_type_table_5072.sql person_database
"$postgres" "$exampleDir/generated_sql" 05_public_personal_id_table_5078.sql person_database
"$postgres" "$exampleDir/generated_sql" 06_public_person_table_5087.sql person_database
"$postgres" "$exampleDir/generated_sql" 07_public_person_person_id_person_id_fk_constraint_5093.sql person_database
"$postgres" "$exampleDir/generated_sql" 08_public_personal_id_personal_id_id_type_fk_constraint_5094.sql
"$postgres" "$exampleDir/generated_sql" 09_public_personal_id_personal_id_person_fk_constraint_5092.sql person_database

"$postgres" "$exampleDir" insert_and_select.sql person_database
