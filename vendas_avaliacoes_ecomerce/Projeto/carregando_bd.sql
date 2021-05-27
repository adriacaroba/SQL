CREATE DATABASE TRAINEE_BI;
USE TRAINEE_BI;

CREATE TABLE tb_order_items(
order_id VARCHAR(50) NOT NULL,
order_item_id INT(10) NOT NULL,
product_id VARCHAR(50) NOT NULL,
saller_id VARCHAR(50) NOT NULL,
shipping_limit_date DATETIME,
price FLOAT,
freight_value FLOAT,
PRIMARY KEY (order_id,order_item_id));

LOAD DATA INFILE "olist_order_items_dataset.csv"
INTO TABLE tb_order_items 
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM tb_order_items;
SELECT COUNT(*) FROM tb_order_items;

CREATE TABLE tb_order_reviews(
review_id VARCHAR(50) NOT NULL,
order_id VARCHAR(50) NOT NULL,
review_score INT(1),
review_comment_title VARCHAR(150),
review_comment_message VARCHAR(200),
review_creation_date DATETIME,
review_answer_timestamp DATETIME,
PRIMARY KEY (review_id,order_id));

LOAD DATA INFILE "olist_order_reviews_dataset.csv"
INTO TABLE tb_order_reviews 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM tb_order_reviews;
SELECT COUNT(*) FROM tb_order_reviews;

CREATE TABLE tb_products(
product_id VARCHAR(50) NOT NULL,
product_category_name VARCHAR(100),
product_name_lenght INT,
product_description_lenght INT,
product_photos_qty INT,
product_weight_g INT,
product_length_cm INT,
product_height_cm INT,
product_width_cm INT,
PRIMARY KEY (product_id));

LOAD DATA INFILE "olist_products_dataset.csv"
INTO TABLE tb_products
FIELDS TERMINATED BY ';' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM tb_products;
SELECT COUNT(*) FROM tb_products;


CREATE TABLE tb_orders(
order_id VARCHAR(50) NOT NULL,
customer_id VARCHAR(50) NOT NULL,
order_status VARCHAR(50),
order_purchase_timestamp DATETIME,
order_approved_at DATETIME,
order_delivered_carrier_date DATETIME,
order_delivered_customer_date DATETIME,
order_estimated_delivery_date DATETIME,
PRIMARY KEY (order_id));

LOAD DATA INFILE "olist_orders_dataset.csv"
INTO TABLE tb_orders
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM tb_orders;
SELECT COUNT(*) FROM tb_orders;