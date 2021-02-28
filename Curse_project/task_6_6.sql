-- All orders total_price
SELECT orders.order_id, 
		(SELECT CONCAT(firstname,' ', surname) from users WHERE orders.users_id = users.id) as user_name,
        SUM(p.price) as total_price
FROM ozon.orders JOIN order_products op ON orders.order_id = op.orders_id JOIN products p ON op.products_id = p.product_id GROUP BY orders.order_id