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
postgres="$exampleDir/../_scripts_/postgres.sh"

"$postgres" "$exampleDir" cleanup.sql

"$postgres" "$exampleDir" init.sql

"$postgres" "$exampleDir" AB_1_tables.sql relationships
"$postgres" "$exampleDir" AB_1_insert_and_select.sql relationships
"$postgres" "$exampleDir" AB_1_insert_error_1.sql relationships
"$postgres" "$exampleDir" AB_1_insert_error_2.sql relationships
"$postgres" "$exampleDir" AB_1_cleanup.sql relationships

"$postgres" "$exampleDir" AB_2_tables.sql relationships
"$postgres" "$exampleDir" AB_2_insert_and_select.sql relationships
"$postgres" "$exampleDir" AB_2_insert_error_1_impossible.sql relationships
"$postgres" "$exampleDir" AB_2_insert_error_2.sql relationships
"$postgres" "$exampleDir" AB_2_cleanup.sql relationships

"$postgres" "$exampleDir" CD_tables.sql relationships
"$postgres" "$exampleDir" CD_insert_and_select.sql relationships
"$postgres" "$exampleDir" CD_insert_error.sql relationships
"$postgres" "$exampleDir" CD_cleanup.sql relationships

"$postgres" "$exampleDir" EF_1_tables.sql relationships
"$postgres" "$exampleDir" EF_1_insert_and_select.sql relationships
"$postgres" "$exampleDir" EF_1_insert_error.sql relationships
"$postgres" "$exampleDir" EF_1_cleanup.sql relationships

"$postgres" "$exampleDir" EF_2_tables.sql relationships
"$postgres" "$exampleDir" EF_2_insert_and_select.sql relationships
"$postgres" "$exampleDir" EF_2_cleanup.sql relationships

"$postgres" "$exampleDir" GH_tables.sql relationships
"$postgres" "$exampleDir" GH_insert_and_select.sql relationships
"$postgres" "$exampleDir" GH_insert_error_1.sql relationships
"$postgres" "$exampleDir" GH_insert_error_2.sql relationships
"$postgres" "$exampleDir" GH_insert_error_3.sql relationships
"$postgres" "$exampleDir" GH_cleanup.sql relationships

"$postgres" "$exampleDir" IJ_tables.sql relationships
"$postgres" "$exampleDir" IJ_cleanup.sql relationships

"$postgres" "$exampleDir" KL_tables.sql relationships
"$postgres" "$exampleDir" KL_insert_and_select.sql relationships
"$postgres" "$exampleDir" KL_cleanup.sql relationships

"$postgres" "$exampleDir" cleanup.sql
