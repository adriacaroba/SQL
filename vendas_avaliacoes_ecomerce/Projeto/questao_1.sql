USE TRAINEE_BI;

SELECT * FROM tb_order_reviews;
SELECT * FROM tb_products;
SELECT * FROM tb_order_items;
SELECT * FROM tb_orders;

#commit Qual o produto (product_id) recebeu o maior número de 5 estrelas?
SELECT COUNT(tb_products.product_id) AS frequencia, tb_products.product_id
FROM tb_products
INNER JOIN tb_order_items ON tb_products.product_id = tb_order_items.product_id
INNER JOIN tb_order_reviews ON tb_order_items.order_id = tb_order_reviews.order_id
WHERE tb_order_reviews.review_score = 5
GROUP BY tb_products.product_id
ORDER BY frequencia desc;

#commit Quais são as Top 5 categorias (product_category_name) que tiveram o maior númerode vendas?
SELECT COUNT(tb_products.product_category_name) as TOTAL_VENDA , tb_products.product_category_name
FROM tb_products
INNER JOIN tb_order_items ON tb_products.product_id = tb_order_items.product_id
GROUP BY tb_products.product_id
ORDER BY TOTAL_VENDA desc;

#commit Quais pedidos (order_id) com review acima de 3 venderam o maior número de produtos distintos?
SELECT COUNT(tb_order_items.product_id) as TOTAL_VENDA , tb_order_items.order_id
FROM tb_order_items
INNER JOIN tb_order_reviews ON tb_order_items.order_id = tb_order_reviews.order_id
WHERE tb_order_reviews.review_score > 3
GROUP BY tb_order_items.order_id
ORDER BY TOTAL_VENDA desc;