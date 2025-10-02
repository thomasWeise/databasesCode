#!/bin/bash

# Run all the normalization scripts.

# strict error handling
set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o nounset   # set -u : exit the script if you try to use an uninitialized variable
set -o errexit   # set -e : exit the script if any statement returns a non-true return value

# The directory where the example is located.
exampleDir="$(readlink -f "$(dirname "$0")")"
cd "$exampleDir"

echo "$(date +'%0Y-%0m-%0d %0R:%0S'): Welcome to the normalization runner script."

"$exampleDir/cleanup.sh"
"$exampleDir/1nf/run.sh"
"$exampleDir/2nf/run.sh"
"$exampleDir/3nf/run.sh"

echo "$(date +'%0Y-%0m-%0d %0R:%0S'): Finished to the normalization example runner script."
