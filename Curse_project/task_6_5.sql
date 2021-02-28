-- All orders with products and price
SELECT orders.order_id, 
		(SELECT CONCAT(firstname,' ', surname) from users WHERE orders.users_id = users.id) as user_name,
        op.products_id,
        p.name,
        p.price
FROM ozon.orders JOIN order_products op ON orders.order_id = op.orders_id JOIN products p ON op.products_id = p.product_id 