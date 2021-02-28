-- All medias per product
SELECT product_id, name, m.media_path FROM ozon.products p LEFT JOIN media m ON m.products_id = p.product_id;