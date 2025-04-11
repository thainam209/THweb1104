-- Tạo cơ sở dữ liệu
CREATE DATABASE IF NOT EXISTS shop_db;
USE shop_db;

-- Tạo bảng sản phẩm
CREATE TABLE IF NOT EXISTS products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price INT NOT NULL,
  image VARCHAR(255) NOT NULL
);

-- Dữ liệu mẫu
INSERT INTO products (name, price, image) VALUES
('Quần ống loe', 120000, 'images/aokhoac1.jpg'),
('Áo sơ mi cổ đúc chun thân áo', 595000, 'images/sp2.jpg'),
('Áo sơ mi dnag đứng suông croptop', 250000, 'images/sp3.jpg'),
('Áo sơ mi cổ Đức thêu ngực', 320000, 'images/sp4.jpg'),
('Áo sơ my may đè gấu', 600000, 'images/sp5.jpg'),
('Áo cổ U phối sơ my', 180000, 'images/sp6.jpg'),
('Áo sơ my tay chun', 580000, 'images/sp7.jpg'),
('Áo sơ mi cổ đức thêu xếp li', 150000, 'images/sp8.jpg'),
('Áo sơ mi A form suông', 100000, 'images/sp9.jpg'),
('Áo sơ mi 2 gấu thêu sau', 300000, 'images/sp10.jpg'),
('Áo sơ mi cuộn bèo', 305000, 'images/sp11.jpg'),
('Áo blazer ', 350000, 'images/sp12.jpg'),
('Áo khoác tweed', 360000, 'images/sp13.jpg');



