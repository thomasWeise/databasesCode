/* Revert the previous change. */
UPDATE product SET height = height + 5  -- new height = old height - 5
    WHERE (width = 350) AND (height = 245) AND (depth = 130);
