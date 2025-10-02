#!/bin/bash

# Run all the scripts of all the examples.

# strict error handling
set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o nounset   # set -u : exit the script if you try to use an uninitialized variable
set -o errexit   # set -e : exit the script if any statement returns a non-true return value

echo "$(date +'%0Y-%0m-%0d %0R:%0S'): Welcome to the logical layer teaching management runner script."

# The directory where the example is located.
exampleDir="$(readlink -f "$(dirname "$0")")"
cd "$exampleDir"

"$exampleDir/cleanup.sh"
"$exampleDir/person_database_1/run.sh"
"$exampleDir/person_database_2/run.sh"
"$exampleDir/student_database_1/run.sh"
"$exampleDir/student_database_2/run.sh"
"$exampleDir/teaching_database_1/run.sh"
echo "$(date +'%0Y-%0m-%0d %0R:%0S'): Finished logical layer teaching management runner script."
