/* Store some data into the table 'customer'. */

-- Print all the contents from table 'customer': Nothing.
SELECT * from customer;

-- Insert 4 customers into our table.
INSERT INTO customer (name, mobile, address)
VALUES ('Bibbo', '99999999999', 'Hefei, Jinxiu Dadao 99'),
       ('Bebbo', '55555555555', 'Rathaus, Chemnitz, Germany'),
       ('Bebba', '33333333333', 'Times Square, NY, USA'),
       ('Bobbo', '44444444444', 'Eiffel Tower, Paris, France');

-- Now there are 4 rows.
SELECT * from customer;
