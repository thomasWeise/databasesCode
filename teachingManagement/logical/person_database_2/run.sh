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
"$postgres" "$exampleDir/generated_sql" 03_public_person_table_5071.sql person_database
"$postgres" "$exampleDir/generated_sql" 04_public_name_table_5075.sql person_database
"$postgres" "$exampleDir/generated_sql" 05_public_address_table_5084.sql person_database
"$postgres" "$exampleDir/generated_sql" 06_public_id_type_table_5094.sql person_database
"$postgres" "$exampleDir/generated_sql" 07_public_has_id_table_5100.sql person_database
"$postgres" "$exampleDir/generated_sql" 08_public_name_name_person_fk_constraint_5108.sql person_database
"$postgres" "$exampleDir/generated_sql" 09_public_address_address_person_fk_constraint_5109.sql person_database
"$postgres" "$exampleDir/generated_sql" 10_public_has_id_has_id_id_type_fk_constraint_5110.sql person_database
"$postgres" "$exampleDir/generated_sql" 11_public_has_id_has_id_person_fk_constraint_5111.sql person_database

"$postgres" "$exampleDir" insert.sql person_database
"$postgres" "$exampleDir" select.sql person_database
