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
scriptDir="$(readlink -f "$exampleDir/../_scripts_")"
postgres="$scriptDir/postgres.sh"
make_table="$scriptDir/db_table_to_latex_table.sh"

# Load the virtual environment
source "$exampleDir/../.venv/bin/activate"

"$postgres" "$exampleDir" cleanup.sql

"$postgres" "$exampleDir" init.sql

"$postgres" "$exampleDir" AB_1_tables.sql relationships
"$postgres" "$exampleDir" AB_1_insert_and_select.sql relationships
"$make_table" "relationships" "a" "aid;x"
"$make_table" "relationships" "b" "bid;y"
"$make_table" "relationships" "relate_a_and_b" "fkaid;fkbid"
"$postgres" "$exampleDir" AB_1_insert_error_1.sql relationships
"$postgres" "$exampleDir" AB_1_insert_error_2.sql relationships
"$postgres" "$exampleDir" AB_cleanup.sql relationships

"$postgres" "$exampleDir" AB_2_tables.sql relationships
"$postgres" "$exampleDir" AB_2_insert_and_select.sql relationships
"$make_table" "relationships" "a" "aid;fkbid;x"
"$make_table" "relationships" "b" "bid;y"
"$postgres" "$exampleDir" AB_2_insert_error_1_impossible.sql relationships
"$postgres" "$exampleDir" AB_2_insert_error_2.sql relationships
"$postgres" "$exampleDir" AB_cleanup.sql relationships

"$postgres" "$exampleDir" CD_tables.sql relationships
"$postgres" "$exampleDir" CD_insert_and_select.sql relationships
"$make_table" "relationships" "c" "cid;fkdid;x"
"$make_table" "relationships" "d" "did;y"
"$postgres" "$exampleDir" CD_insert_error.sql relationships
"$postgres" "$exampleDir" CD_cleanup.sql relationships

"$postgres" "$exampleDir" EF_1_tables.sql relationships
"$postgres" "$exampleDir" EF_1_insert_and_select.sql relationships
"$make_table" "relationships" "e" "eid;x"
"$make_table" "relationships" "f" "fid;y"
"$make_table" "relationships" "relate_e_and_f" "fkeid;fkfid"
"$postgres" "$exampleDir" EF_1_insert_error.sql relationships
"$postgres" "$exampleDir" EF_cleanup.sql relationships

"$postgres" "$exampleDir" EF_2_tables.sql relationships
"$postgres" "$exampleDir" EF_2_insert_and_select.sql relationships
"$make_table" "relationships" "e" "eid;x"
"$make_table" "relationships" "f" "fid;fkeid;y"
"$postgres" "$exampleDir" EF_cleanup.sql relationships

"$postgres" "$exampleDir" GH_tables.sql relationships
"$postgres" "$exampleDir" GH_insert_and_select.sql relationships
"$make_table" "relationships" "g" "gid;fkhid;x"
"$make_table" "relationships" "h" "hid;fkgid;y"
"$postgres" "$exampleDir" GH_insert_error_1.sql relationships
"$postgres" "$exampleDir" GH_insert_error_2.sql relationships
"$postgres" "$exampleDir" GH_insert_error_3.sql relationships
"$postgres" "$exampleDir" GH_insert_error_4.sql relationships
"$postgres" "$exampleDir" GH_insert_error_5.sql relationships
"$postgres" "$exampleDir" GH_cleanup.sql relationships

"$postgres" "$exampleDir" IJ_tables.sql relationships
"$postgres" "$exampleDir" IJ_cleanup.sql relationships

"$postgres" "$exampleDir" KL_tables.sql relationships
"$postgres" "$exampleDir" KL_insert_and_select.sql relationships
"$make_table" "relationships" "k" "kid;x"
"$make_table" "relationships" "l" "lid;fkkid;y"
"$postgres" "$exampleDir" KL_cleanup.sql relationships

"$postgres" "$exampleDir" MN_tables.sql relationships
"$postgres" "$exampleDir" MN_insert_and_select.sql relationships
"$make_table" "relationships" "m" "mid;fknid;x"
"$make_table" "relationships" "n" "nid;fkmid;y"
"$postgres" "$exampleDir" MN_insert_error_1.sql relationships
"$postgres" "$exampleDir" MN_insert_error_2.sql relationships
"$postgres" "$exampleDir" MN_insert_error_3.sql relationships
"$postgres" "$exampleDir" MN_insert_error_4.sql relationships
"$postgres" "$exampleDir" MN_insert_error_5.sql relationships
"$postgres" "$exampleDir" MN_cleanup.sql relationships

"$postgres" "$exampleDir" OP_tables.sql relationships
"$postgres" "$exampleDir" OP_insert_and_select.sql relationships
"$make_table" "relationships" "o" "oid;x"
"$make_table" "relationships" "p" "pid;y"
"$make_table" "relationships" "relate_o_and_p" "fkoid;fkpid"
"$postgres" "$exampleDir" OP_insert_error.sql relationships
"$postgres" "$exampleDir" OP_cleanup.sql relationships

"$postgres" "$exampleDir" QR_tables.sql relationships
"$postgres" "$exampleDir" QR_insert_and_select.sql relationships
"$make_table" "relationships" "q" "qid;fkrid;x"
"$make_table" "relationships" "r" "rid;y"
"$make_table" "relationships" "relate_q_and_r" "fkqid;fkrid"
"$postgres" "$exampleDir" QR_insert_error_1.sql relationships
"$postgres" "$exampleDir" QR_insert_error_2.sql relationships
"$postgres" "$exampleDir" QR_insert_error_3.sql relationships
"$postgres" "$exampleDir" QR_cleanup.sql relationships

"$postgres" "$exampleDir" ST_tables.sql relationships
"$postgres" "$exampleDir" ST_insert_and_select.sql relationships
"$make_table" "relationships" "s" "sid;fktid;x"
"$make_table" "relationships" "t" "tid;fksid;y"
"$make_table" "relationships" "relate_s_and_t" "fksid;fktid"
"$postgres" "$exampleDir" ST_insert_error_1.sql relationships
"$postgres" "$exampleDir" ST_insert_error_2.sql relationships
"$postgres" "$exampleDir" ST_cleanup.sql relationships

"$postgres" "$exampleDir" cleanup.sql
