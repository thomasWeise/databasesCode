"""Connect to our factory database, insert and select some records."""

from psycopg import connect
from psycopg.rows import dict_row

# Connect to the database and create a cursor to interact with the db:
with (connect("postgres://boss:superboss123@localhost/factory") as conn,
      conn.cursor(row_factory=dict_row) as cur):  # SELECT returns dicts
    print("Executing a single INSERT statement.")
    cur.execute(  # Insert one new demand record.
        "INSERT INTO demand (customer, product, amount) VALUES (%s, %s, %s)",
        (3, 4, 5))

    print("Executing a several INSERT statements at once.")
    cur.executemany(  # Insert three new demand records.
        "INSERT INTO demand (customer, product, amount) VALUES (%s, %s, %s)",
        ((3, 5, 2), (2, 7, 1), (1, 10, 5)))

    print("Now performing a SELECT request for customer Bebbo (id 2).")
    cur.execute("SELECT * FROM demand WHERE customer=%s", (2, ))
    for record in cur:  # Iterate over the records in the cursor.
        print(record)  # Print them as-is.

print("All done.")
