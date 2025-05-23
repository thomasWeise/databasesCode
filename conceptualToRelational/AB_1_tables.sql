/* Create the tables for an A-|o-----o|-B relationship. */

-- Table A: Each row in A is related to zero or one row in B.
CREATE TABLE a (
    aid INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    x   CHAR(3)  -- example of other attributes
);

-- Table B: Each row in B is related to zero or one row in A.
CREATE TABLE b (
    bid INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    y   CHAR(2)  -- example of other attributes
);

-- The table for managing the relationship between A and B.
CREATE TABLE relate_a_and_b (
    fkaid INT NOT NULL UNIQUE PRIMARY KEY REFERENCES a (aid),
    fkbid INT NOT NULL UNIQUE             REFERENCES b (bid)
);
