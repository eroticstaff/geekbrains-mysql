-- products rating
SELECT product_id, name, AVG(stars) FROM ozon.products p JOIN reviews r ON r.products_id = p.product_id GROUP BY product_id;