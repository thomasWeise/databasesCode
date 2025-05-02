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

"$postgres" "$exampleDir/generated_sql" 01_teaching_database_database_2001.sql
"$postgres" "$exampleDir/generated_sql" 03_public_student_table_5071.sql teaching_database
"$postgres" "$exampleDir/generated_sql" 04_public_professor_table_5087.sql teaching_database
"$postgres" "$exampleDir/generated_sql" 05_public_module_table_5095.sql teaching_database
"$postgres" "$exampleDir/generated_sql" 06_public_course_table_5105.sql teaching_database
"$postgres" "$exampleDir/generated_sql" 07_public_enrolls_table_5131.sql teaching_database
"$postgres" "$exampleDir/generated_sql" 08_public_course_course_professor_fk_constraint_5116.sql teaching_database
"$postgres" "$exampleDir/generated_sql" 09_public_course_course_module_fk_constraint_5117.sql teaching_database
"$postgres" "$exampleDir/generated_sql" 10_public_enrolls_enrolls_student_fk_constraint_5145.sql teaching_database
"$postgres" "$exampleDir/generated_sql" 11_public_enrolls_enrolls_course_fk_constraint_5151.sql teaching_database
"$postgres" "$exampleDir" insert_and_select.sql teaching_database
