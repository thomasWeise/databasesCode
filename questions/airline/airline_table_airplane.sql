-- The airplane table of the airline example.
CREATE TABLE airplane (
    tail_number   VARCHAR(10) NOT NULL UNIQUE PRIMARY KEY,
    airplane_type INT         NOT NULL REFERENCES airplane_type (id)
);
