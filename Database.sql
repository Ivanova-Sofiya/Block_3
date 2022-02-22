INSERT INTO category (name, products_count) 
VALUES ('Рубашки', 12);

INSERT INTO category (name, products_count) 
VALUES ('Свитшоты', 12);

INSERT INTO category (name, products_count) 
VALUES ('Худи', 12);

INSERT INTO category (name, products_count) 
VALUES ('Джемпера', 12);

INSERT INTO category (name, products_count) 
VALUES ('Футболки', 12);

INSERT INTO category (name, products_count) 
VALUES ('Платья', 12);

INSERT INTO category (name, products_count) 
VALUES ('Джинсы', 12);

INSERT INTO category (name, products_count) 
VALUES ('Брюки', 12);

INSERT INTO category (name, products_count) 
VALUES ('Юбки', 12);

INSERT INTO category (name, products_count) 
VALUES ('Кроссовки', 12);

INSERT INTO photos (photo_url, alt_name) 
VALUES ('image.png', 'Рубашка');

INSERT INTO photos (photo_url, alt_name) 
VALUES ('image.png', 'Худи');

INSERT INTO photos (photo_url, alt_name) 
VALUES ('image.png', 'Худи со спины');

INSERT INTO photos (photo_url, alt_name) 
VALUES ('image.png', 'Рукав худи');

INSERT INTO photos (photo_url, alt_name) 
VALUES ('image.png', 'Нашивка на худи');

INSERT INTO photos (photo_url, alt_name)
VALUES ('image.png', 'Джинсы');

INSERT INTO photos (photo_url, alt_name)
VALUES ('image.png', 'Карман джинс');

INSERT INTO photos (photo_url, alt_name)
VALUES ('image.png', 'Джинсы на модели');

INSERT INTO photos (photo_url, alt_name)
VALUES ('image.png', 'Футболка');

INSERT INTO photos (photo_url, alt_name)
VALUES ('image.png', 'Футболка вблизи');

INSERT INTO photos (photo_url, alt_name)
VALUES ('image.png', 'Футболка вид со спины');

INSERT INTO products (name, price, price_sale, price_old, description, id_photo, id_list_category)
VALUES ('Худи', 2499, 2277, 2699, 'Худи: 100% хлопок',
(SELECT id_photo FROM photos WHERE alt_name='Худи со спины'), 
(SELECT id_category FROM category WHERE name='Худи'));

INSERT INTO `category/products` (id_category, id_product) VALUES (2, 1);
INSERT INTO `category/products` (id_category, id_product) VALUES (3, 1);
INSERT INTO `products/photos` (id_product, id_photo) VALUES (1, 2);
INSERT INTO `products/photos` (id_product, id_photo) VALUES (1, 3);
INSERT INTO `products/photos` (id_product, id_photo) VALUES (1, 4);
INSERT INTO `products/photos` (id_product, id_photo) VALUES (1, 5);

INSERT INTO products (name, price, price_sale, price_old, description, id_photo, id_list_category)
VALUES ('Футболка', 799, 599, 999, 'Футболка-платье черного цвета. 100% хлопок',
(SELECT id_photo FROM photos WHERE alt_name='Футболка'), 
(SELECT id_category FROM category WHERE name='Футболки'));

INSERT INTO `category/products` (id_category, id_product) VALUES (5, 2);
INSERT INTO `category/products` (id_category, id_product) VALUES (6, 2);
INSERT INTO `products/photos` (id_product, id_photo) VALUES (2, 9);
INSERT INTO `products/photos` (id_product, id_photo) VALUES (2, 10);
INSERT INTO `products/photos` (id_product, id_photo) VALUES (2, 11);
