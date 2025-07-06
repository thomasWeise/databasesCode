/* We change entries in the table 'product' in our factory database. */

-- We want to reduce the height of all show boxes by 5mm.
-- We know what product comes in a shoe box by the box dimensions of
-- 350mm * 250mm * 130mm. If it has this size, it's a shoe box.
UPDATE product SET height = height - 5  -- new height = old height - 5
    WHERE (width = 350) AND (height = 250) AND (depth = 130);
-- Get the updated rows.
SELECT * FROM product
    WHERE (width = 350) AND (height = 245) AND (depth = 130);
-- Now the shoe boxe are 245mm high. Before they were 250mm high.
