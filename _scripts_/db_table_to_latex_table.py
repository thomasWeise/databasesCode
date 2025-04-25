"""A script that turns a table into a LaTeX table code."""

from sys import argv
from typing import Any, Final, Iterable, LiteralString, cast

from psycopg import connect
from psycopg.rows import dict_row

connection: Final[str] = f"postgres://{argv[4]}:{argv[5]}@localhost/{argv[1]}"
fields: Final[list[str]] = list(map(str.strip, argv[3].split(";")))
n_fields: Final[int] = list.__len__(fields)
table: Final[str] = str.strip(argv[2])

def to_str(a: Any) -> str:
    """Convert value a to a string."""
    if a is None:
        return "\\sqlil{NULL}"
    if isinstance(a, str):
        return f"\\inQuotes{{{a}}}"
    return str(a)


def to_head(a: Any) -> str:
    """Convert a value to a header string."""
    return f"\\textbf{{{a}}}"


def line(seq: Iterable[Any], header: bool=False) -> str:
    """Convert a sequence of strings to a line."""
    return "&".join(map(to_head if header else to_str, seq)) + "\\\\%"


print(f"\\begin{{tabular}}{{{''.join(n_fields * ['c'])}}}%")
print(f"\\multicolumn{{{n_fields}}}{{c}}{{\\scalebox{{1.1}}{{\\textbf{{Table~\\scalebox{{1.3}}{{\\sqlil{{{table}}}}}}}}}}}\\\\%")
print("\\hline%")
print(line(fields, True))
print("\\hline%")

# Connect to the database and create a cursor to interact with the db:
with (connect(connection) as conn,
      conn.cursor(row_factory=dict_row) as cur):  # SELECT returns dicts

    # Below, we violate the required use of LiteralString for the sake of
    # ease.
    cur.execute(cast(
        LiteralString, "SELECT " + ", ".join(fields) + " FROM " + table))

    for record in cur:  # Iterate over the records in the cursor.
        print(line(map(record.get, fields)))

print("\\hline%")
print("\\end{tabular}%")
