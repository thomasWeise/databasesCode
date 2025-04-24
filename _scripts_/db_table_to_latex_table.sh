#!/bin/bash -

# Convert a table in the database server to a LaTeX table.
# Argument $1: the directory
# Argument $2: the file inside the directory to execute
# Argument $3 [optional]: the database to use
# Argument $4 [optional]: the user to use
# Argument $5 [optional]: the password to use

# We enforce strict error handling, i.e., fail on any unexpected error.
set -o pipefail  # trace errors through pipes
set -o errtrace  # trace errors through commands and functions
set -o nounset   # exit if encountering an uninitialized variable
set -o errexit   # exit if any statement returns a non-0 return value

# Set up the internal variables.
db="${1}"
table="${2}"
fields="${3}"
user="${4:-}"
password="${5:-}"

if [ -z "$user" ]; then
  if [[ $(declare -p POSTGRES_USER 2>/dev/null) == declare\ ?x* ]]; then
    user="${POSTGRES_USER}"
  else
    user="postgres"
  fi
fi
if [ -z "$password" ]; then
  if [[ $(declare -p POSTGRES_PASSWORD 2>/dev/null) == declare\ ?x* ]]; then
    password="${POSTGRES_PASSWORD}"
  fi
fi

scriptDir="$(readlink -f "$(dirname "$0")")"
python3 "$scriptDir/db_table_to_latex_table.py" "${db}" "${table}" "${fields}" "${user}" "${password}"
