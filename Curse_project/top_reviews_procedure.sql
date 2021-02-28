CREATE DEFINER=`root`@`localhost` PROCEDURE `top_reviews`(IN for_product_id INT)
BEGIN
SELECT product_id, 
		`name`,
        r.review_id,
        commentary,
        stars,
        created_at,
        COUNT(rl.users_id) as likes,
        (SELECT CONCAT(firstname, ' ', surname) FROM users WHERE users.id = r.users_id) as user_name
        FROM ozon.products p JOIN reviews r ON r.products_id = p.product_id LEFT JOIN review_likes rl ON rl.reviews_id = r.review_id  WHERE p.product_id = for_product_id GROUP BY r.review_id ORDER BY likes DESC;
END