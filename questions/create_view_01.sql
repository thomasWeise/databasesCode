CREATE VIEW food_sales AS
    SELECT food.name as food_name, SUM(food.price * sale.amount) AS total
    FROM food INNER JOIN sale ON (sale.food = food.id)
    GROUP BY food_name ORDER BY food_name;
