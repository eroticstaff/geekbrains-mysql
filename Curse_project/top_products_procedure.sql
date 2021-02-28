CREATE DEFINER=`root`@`localhost` PROCEDURE `top_products`()
BEGIN
SELECT product_id, name, AVG(stars) as rating FROM ozon.products p JOIN reviews r ON r.products_id = p.product_id GROUP BY product_id ORDER BY rating DESC LIMIT 5;
END