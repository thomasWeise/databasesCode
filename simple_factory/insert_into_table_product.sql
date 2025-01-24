/* Store some data into the table 'product'. */

-- Print all the contents from table 'product': Nothing.
SELECT * from product;

-- Insert 11 products into our table.
INSERT INTO product (name, price, weight, width, height, depth)
VALUES ('Shoe, Size 36', 150.99, 1300, 350, 250, 130),
       ('Shoe, Size 37', 152.99, 1325, 350, 250, 130),
       ('Shoe, Size 38', 154.99, 1350, 350, 250, 130),
       ('Shoe, Size 39', 156.99, 1375, 350, 250, 130),
       ('Shoe, Size 40', 158.99, 1400, 350, 250, 130),
       ('Shoe, Size 41', 160.99, 1425, 350, 250, 130),
       ('Shoe, Size 42', 162.99, 1450, 350, 250, 130),
       ('Shoe, Size 43', 164.99, 1475, 350, 250, 130),
       ('Small Purse', 100, 500, 350, 250, 130),
       ('Medium Purse', 120, 750, 400, 300, 200),
       ('Large Purse', 150, 1500, 600, 4000, 250);

-- Now there are 11 rows.
SELECT * from product;
