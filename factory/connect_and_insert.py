"""Connect to our factory database and insert some records."""

from typing import LiteralString

from psycopg import connect

# The insert statement has to be a literal string.
statement: LiteralString = "INSERT INTO demand (customer, product, amount, ordered) VALUES (%s,%s,%s,%s)"

# Connect to the database and create a cursor to interact with the db:
with (connect("postgres://boss:superboss123@localhost/factory") as conn,
      conn.cursor() as cur):
    print("Executing a single INSERT statement.")
    cur.execute(statement,  # Insert one new demand record.
                (3, 4, 5, "2025-03-05" ))

    print("Executing three INSERT statements at once.")
    cur.executemany(statement, (  # Insert three new demand records.
        (3,  5, 2, "2025-03-16"), (2, 7, 1, "2025-03-29"),
        (1, 10, 5, "2025-04-05")))

print("All done.")
