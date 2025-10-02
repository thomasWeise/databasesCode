#!/bin/bash

# Clean up the 1nf example.

# strict error handling
set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o nounset   # set -u : exit the script if you try to use an uninitialized variable
set -o errexit   # set -e : exit the script if any statement returns a non-true return value

echo "$(date +'%0Y-%0m-%0d %0R:%0S'): Welcome to the normalization cleanup script."

# The directory where the example is located.
exampleDir="$(readlink -f "$(dirname "$0")")"
cd "$exampleDir"

"$exampleDir/1nf/cleanup.sh"
"$exampleDir/2nf/cleanup.sh"
"$exampleDir/3nf/cleanup.sh"
echo "$(date +'%0Y-%0m-%0d %0R:%0S'): Finished the normalization cleanup script."
