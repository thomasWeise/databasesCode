-- The airplane table of the airline example.
CREATE TABLE airplane (
    tail_number   VARCHAR(10) NOT NULL PRIMARY KEY,
    airplane_type INT         NOT NULL REFERENCES airplane_type (id)
    CONSTRAINT tail_number_ok CHECK (tail_number ~ '^[A-Z]+-\d{2,8}$')
);
