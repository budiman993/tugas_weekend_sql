CREATE DATABASE IF NOT EXISTS tugas_weekend; 
SHOW DATABASES; 
USE tugas_weekend;
CREATE TABLE netflix (
 show_id INT(8) PRIMARY KEY, 
 movie_type VARCHAR(30), 
 movie_title VARCHAR(100), 
 director VARCHAR(50), 
 movie_cast TEXT, 
 country VARCHAR(50), 
 date_added VARCHAR(25), 
 release_year YEAR, 
 rating VARCHAR(15), 
 duration VARCHAR(25), 
 listed_in TEXT, 
 movie_desc TEXT 
 ); 

LOAD DATA LOCAL INFILE 'E:\\bkpsdm\\SQL\\netflix_titles.csv' 
INTO TABLE netflix 
CHARACTER SET 'utf8' 
FIELDS ESCAPED BY '\\' 
TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n' 
IGNORE 1 LINES 
(`show_id`, `movie_type`, `movie_title`, `director`, `movie_cast`, `country`, `date_added`, `release_year`, `rating`, `duration`, `listed_in`, `movie_desc`);
SELECT COUNT(*) FROM netflix;

SELECT * FROM netflix WHERE duration = '90 min' ORDER BY release_year DESC;

SELECT * FROM netflix WHERE country = 'Thailand' ORDER BY release_year DESC;

SELECT * FROM netflix WHERE release_year > 2015 ORDER BY release_year DESC;