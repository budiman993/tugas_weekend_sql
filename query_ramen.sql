CREATE DATABASE tugas_weekend; 
SHOW DATABASES; 
USE tugas_weekend;

CREATE TABLE ramen ( 
review INT(5) PRIMARY KEY, 
brand VARCHAR(50), 
variety VARCHAR(50), 
style VARCHAR(20), 
country VARCHAR(50), 
star FLOAT, 
top_ten VARCHAR(15) 
); 

LOAD DATA LOCAL INFILE 'E:\\bkpsdm\\SQL\\ramen-ratings.csv' 
INTO TABLE ramen 
CHARACTER SET 'utf8' 
FIELDS ESCAPED BY '\\' 
TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n' 
IGNORE 1 LINES 
(`review`, `brand`, `variety`, `style`, `country`, `star`, `top_ten`);
SELECT COUNT(*) FROM ramen;

SELECT * FROM ramen WHERE star >= 4 ORDER BY star DESC;

SELECT * FROM ramen WHERE Country = 'Japan' ORDER BY top_ten DESC;

SELECT review, brand, UPPER(variety), style, country, star, top_ten FROM ramen;