#!/bin/bash -

# This is our internal psql execution script.
# It prints the psql command and the results of psql.
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
directory="$1"
file="$2"
db="${3:-}"
user="${4:-}"
password="${5:-}"

# We step-by-step construct the psql query URI.
# In "uri", we include the actual password for the connection.
# In "uriShow", we do not print the password, instead we print "pw".
uri="postgres://"
if [ -n "$user" ]; then
  uri="${uri}${user}"
else
  if [[ $(declare -p POSTGRES_USER 2>/dev/null) == declare\ ?x* ]]; then
    uri="${uri}${POSTGRES_USER}"
  else
    uri="${uri}postgres"
  fi
fi
uriShow="${uri}"
if [ -n "$password" ]; then
  uri="${uri}:${password}"
  uriShow="${uriShow}:${password}"
else
  if [[ $(declare -p POSTGRES_PASSWORD 2>/dev/null) == declare\ ?x* ]]; then
    uri="${uri}:${POSTGRES_PASSWORD}"
    uriShow="${uriShow}:XXX"
  fi
fi
if [[ $(declare -p POSTGRES_HOST 2>/dev/null) == declare\ ?x* ]]; then
  uri="${uri}@${POSTGRES_HOST}"
  uriShow="${uriShow}@${POSTGRES_HOST}"
else
  uri="${uri}@localhost"
  uriShow="${uriShow}@localhost"
fi
if [[ $(declare -p POSTGRES_PORT 2>/dev/null) == declare\ ?x* ]]; then
  if [ "$POSTGRES_PORT" != "5432" ]; then
    uri="${uri}:${$POSTGRES_PORT}"
    uriShow="${uriShow}:${$POSTGRES_PORT}"
  fi
fi
if [ -n "$db" ]; then
    uri="${uri}/${db}"
    uriShow="${uriShow}/${db}"
fi

echo "$ psql \"${uriShow}\" -v ON_ERROR_STOP=1 -bewf $file"

set +o errexit  # Turn off exit-on-error.
psql "$uri" -v ON_ERROR_STOP=1 -bewf "$directory/$file" 2>&1
exitCode="$?"  # Store exit code of program in variable exitCode.
set -o errexit  # Turn exit-on-error back on.

# Convert exit code to success or failure string.
[ "$exitCode" -eq 0 ] && exitCodeStr="succeeded" || exitCodeStr="failed"

version="$(psql --version 2>/dev/null | grep Postgre | sed -n 's/\psql (PostgreSQL) \([.0-9]*\)/\1/p')" || true
version="$(sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//' -e 's/[[:space:]][[:space:]][[:space:]]*/ /g' -e 's/\.*$//'<<<"${version}")" || true

# Finally, we print the result string.
echo "# psql $version $exitCodeStr with exit code $exitCode."
