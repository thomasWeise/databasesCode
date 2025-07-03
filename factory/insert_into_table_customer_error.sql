/* Store some faulty data into the table 'customer'. */

-- Try to insert a faulty customer record. Can you spot the error?
INSERT INTO customer (name, phone, address)
VALUES ('Eugen', '88888B88888', 'Hochschule Osnabrück, Germany');
