"""Connect to our factory database and select some records."""

from psycopg import connect
from psycopg.rows import dict_row

# Connect to the database and create a cursor to interact with the db:
with (connect("postgres://boss:superboss123@localhost/factory") as conn,
      conn.cursor(row_factory=dict_row) as cur):  # SELECT returns dicts

    print("Now performing a SELECT request for customer Bebbo (id 2).")
    cur.execute("SELECT * FROM demand WHERE customer=2")
    for record in cur:  # Iterate over the records in the cursor.
        print(record)  # Print them as-is.

print("All done.")
