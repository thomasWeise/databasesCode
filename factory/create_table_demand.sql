/* We create the new table 'demand' in our factory database. */

-- The table 'demand' stores all the customer orders.
CREATE TABLE demand (
    id       INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    customer INT  NOT NULL REFERENCES customer(id),
    product  INT  NOT NULL REFERENCES product(id),
    amount   INT  NOT NULL,
    ordered  DATE NOT NULL,
    CONSTRAINT ordered_amount_ok CHECK (
        (amount > 0) AND (amount < 1000000)),
    CONSTRAINT ordered_date_ok CHECK (
        (ordered > '2024-10-01') AND (ordered < '3000-01-01'))
);

-- List all tables of the user 'boss' in database 'factory'
-- Now we see the table 'demand'.
SELECT tablename FROM pg_catalog.pg_tables
    WHERE tableowner='boss';
