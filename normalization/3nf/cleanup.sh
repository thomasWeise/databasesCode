#!/bin/bash

# Clean up the 1nf example.

# strict error handling
set -o pipefail  # trace ERR through pipes
set -o errtrace  # trace ERR through 'time command' and other functions
set -o nounset   # set -u : exit the script if you try to use an uninitialized variable
set -o errexit   # set -e : exit the script if any statement returns a non-true return value

echo "$(date +'%0Y-%0m-%0d %0R:%0S'): Welcome to the 3nf cleanup script."

# Go to the directory where this script is located.
cd "$(readlink -f "$(dirname "$0")")"

./rooms/cleanup.sh
echo "$(date +'%0Y-%0m-%0d %0R:%0S'): Finished the 3nf cleanup script."
