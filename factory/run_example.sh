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

# Load the virtual environment
source "$exampleDir/../.venv/bin/activate"

#: the postgre sql script
postgres="$exampleDir/../_scripts_/postgres.sh"

"$exampleDir/cleanup_example.sh"

"$postgres" "$exampleDir" cleanup_inside_database.sql factory boss superboss123
"$postgres" "$exampleDir" cleanup_database_and_user.sql

"$postgres" "$exampleDir" create_user.sql
"$postgres" "$exampleDir" create_database.sql

"$postgres" "$exampleDir" create_table_product.sql factory boss superboss123
"$postgres" "$exampleDir" insert_into_table_product.sql factory boss superboss123
"$postgres" "$exampleDir" insert_into_table_product_error.sql factory boss superboss123
"$postgres" "$exampleDir" select_from_table_product.sql factory boss superboss123
"$postgres" "$exampleDir" create_table_customer.sql factory boss superboss123
"$postgres" "$exampleDir" insert_into_table_customer.sql factory boss superboss123
"$postgres" "$exampleDir" create_table_demand.sql factory boss superboss123
"$postgres" "$exampleDir" insert_into_table_demand.sql factory boss superboss123

"$postgres" "$exampleDir" select_customer_demand.sql factory boss superboss123
"$postgres" "$exampleDir" create_view_sale.sql factory boss superboss123
"$postgres" "$exampleDir" select_from_view_sale_1.sql factory boss superboss123
"$postgres" "$exampleDir" select_from_view_sale_2.sql factory boss superboss123

python3 connect_insert_and_select.py

"$postgres" "$exampleDir" select_from_view_sale_3.sql factory boss superboss123
