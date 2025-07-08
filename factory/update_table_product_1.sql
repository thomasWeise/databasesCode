/** Get all the products that ship in shoe boxes. */

-- We know what product comes in a shoe box by the box dimensions of
-- 350mm * 250mm * 130mm. If it has this size, it's a shoe box.
SELECT * FROM product  -- new height = old height - 5
    WHERE (width = 350) AND (height = 250) AND (depth = 130);
