CREATE DATABASE GHIBLI;

use GHIBLI;


CREATE TABLE directors(
director_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL);

select * from directors;

CREATE TABLE movies(
movie_id INT PRIMARY KEY,
title VARCHAR(100),
release_year INT,
director_id INT,
genre VARCHAR(50),
duration_mins INT,
description TEXT,
FOREIGN KEY(director_id) REFERENCES directors(director_id));

select* from movies;

CREATE TABLE ratings (
    rating_id INT PRIMARY KEY,
    movie_id INT,
    imdb_rating DECIMAL(3,1),
    rt_score INT,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

select * from ratings;

CREATE TABLE characters (
    character_id INT PRIMARY KEY,
    movie_id INT,
    name VARCHAR(100),
    role VARCHAR(100),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

select * from characters;

CREATE TABLE box_office (
    box_id INT PRIMARY KEY,
    movie_id INT,
    revenue_million DECIMAL(10,2),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

select * from box_office;

-- Directors
INSERT INTO directors VALUES 
(1, 'Hayao Miyazaki'),
(2, 'Isao Takahata'),
(3, 'Gorō Miyazaki'),
(4, 'Hiromasa Yonebayashi'),
(5, 'Yoshifumi Kondō'),
(6, 'Yoshifumi Kondō'),
(7, 'Mamoru Hosoda');


INSERT INTO directors VALUES 
(8, 'Hiroyuki Morita'),
(9, 'Sunao Katabuchi'),
(10, 'Katsuya Kondō'),
(11, 'Makoto Shinkai'),
(12, 'Mamoru Oshii'),
(13, 'Satoshi Kon'),
(14, 'Hideaki Anno'),
(15, 'Kunihiko Yuyama'),
(16, 'Keiichi Hara'),
(17, 'Takeshi Seyama'),
(18, 'Hirokazu Kore-eda'),
(19, 'Yasuhiro Yoshiura'),
(20, 'Yoshitaka Amano'),
(21, 'Naoko Yamada'),
(22, 'Keiji Nakazawa'),
(23, 'Kitaro Kosaka'),
(24, 'Kenji Kamiyama');


INSERT INTO movies VALUES 
(1, 'Spirited Away', 2001, 1, 'Fantasy', 125, 'A girl enters a magical world of spirits.'),
(2, 'My Neighbor Totoro', 1988, 1, 'Fantasy', 86, 'Two girls encounter magical forest creatures.'),
(3, 'Grave of the Fireflies', 1988, 2, 'Drama', 89, 'Siblings struggle to survive in wartime Japan.'),
(4, 'Princess Mononoke', 1997, 1, 'Fantasy', 134, 'A prince is drawn into a struggle between humans and the animal spirits of the forest.'),
(5, 'Kiki''s Delivery Service', 1989, 1, 'Fantasy', 103, 'A young witch finds her place in the world.'),
(6, 'The Secret World of Arrietty', 2010, 4, 'Fantasy', 94, 'A young boy befriends a tiny person living beneath the floorboards of his home.'),
(7, 'When Marnie Was There', 2014, 4, 'Drama', 103, 'A young girl discovers a mysterious girl who becomes her friend.'),
(8, 'The Wind Rises', 2013, 1, 'Drama', 126, 'A young man designs planes for the Japanese army during World War II.'),
(9, 'The Tale of The Princess Kaguya', 2013, 3, 'Fantasy', 137, 'A young girl is discovered as a baby inside a bamboo stalk and grows up to be a princess.'),
(10, 'Ponyo', 2008, 1, 'Fantasy', 101, 'A young boy befriends a magical goldfish who wants to become human.'),
(11, 'Nausicaa of the Valley of the Wind', 1984, 1, 'Science Fiction', 117, 'A princess fights to save her people from a toxic jungle.'),
(12, 'Laputa: Castle in the Sky', 1986, 1, 'Science Fiction', 124, 'A young boy and girl search for a legendary floating city.'),
(13, 'Castle in the Sky', 1986, 1, 'Science Fiction', 124, 'A young boy and girl search for a legendary floating city.'),
(14, 'My Neighbor Totoro', 1988, 1, 'Fantasy', 86, 'Two girls encounter magical forest creatures.'),
(15, 'Kiki''s Delivery Service', 1989, 1, 'Fantasy', 103, 'A young witch finds her place in the world.'),
(16, 'Only Yesterday', 1991, 2, 'Drama', 116, 'A young woman reflects on her childhood.'),
(17, 'Porco Rosso', 1992, 1, 'Fantasy', 94, 'A former World War I fighter pilot turned into a pig fights against air pirates.'),
(18, 'Ocean Waves', 1993, 2, 'Drama', 72, 'A young man reflects on his past love.'),
(19, 'Pom Poko', 1994, 1, 'Fantasy', 119, 'A group of tanuki use their shape-shifting abilities to fight against human development.'),
(20, 'Whisper of the Heart', 1995, 1, 'Romance', 111, 'A young girl falls in love with a boy and writes a fantasy novel.'),
(21, 'Princess Mononoke', 1997, 1, 'Fantasy', 134, 'A prince is drawn into a struggle between humans and the animal spirits of the forest.'),
(22, 'My Neighbors the Yamadas', 1999, 1, 'Comedy', 104, 'A family navigates everyday life.'),
(23, 'Spirited Away', 2001, 1, 'Fantasy', 125, 'A girl enters a magical world of spirits.'),
(24, 'The Cat Returns', 2002, 1, 'Fantasy', 75, 'A girl is transported to a fantasy world where she must rescue a prince.');
-- Ratings
INSERT INTO ratings VALUES 
(1, 1, 8.6, 97),
(2, 2, 8.2, 94),
(3, 3, 8.5, 100),
(4, 4, 8.8, 92),
(5, 5, 7.9, 85),
(6, 6, 7.6, 94),
(7, 7, 7.8, 88),
(8, 8, 8.1, 89),
(9, 9, 8.3, 95),
(10, 10, 7.7, 91),
(11, 11, 8.1, 88),
(12, 12, 8.0, 90),
(13, 13, 8.0, 90),
(14, 14, 8.2, 94),
(15, 15, 7.9, 85),
(16, 16, 7.7, 86),
(17, 17, 7.9, 87),
(18, 18, 7.5, 84),
(19, 19, 7.8, 89),
(20, 20, 7.6, 86),
(21, 21, 8.8, 92),
(22, 22, 7.4, 83),
(23, 23, 8.6, 97),
(24, 24, 7.5, 85);

-- Ratings
INSERT INTO ratings VALUES 
(1, 1, 8.6, 97),
(2, 2, 8.2, 94),
(3, 3, 8.5, 100),
(4, 4, 8.8, 92),
(5, 5, 7.9, 85),
(6, 6, 7.6, 94),
(7, 7, 7.8, 88),
(8, 8, 8.1, 89),
(9, 9, 8.3, 95),
(10, 10, 7.7, 91),
(11, 11, 8.1, 88),
(12, 12, 8.0, 90),
(13, 13, 8.0, 90),
(14, 14, 8.2, 94),
(15, 15, 7.9, 85),
(16, 16, 7.7, 86),
(17, 17, 7.9, 87),
(18, 18, 7.5, 84),
(19, 19, 7.8, 89),
(20, 20, 7.6, 86),
(21, 21, 8.8, 92),
(22, 22, 7.4, 83),
(23, 23, 8.6, 97),
(24, 24, 7.5, 85);

-- Characters
INSERT INTO characters VALUES 
(1, 1, 'Chihiro', 'Protagonist'),
(2, 2, 'Totoro', 'Forest Spirit'),
(3, 3, 'Seita', 'Brother'),
(4, 4, 'Ashitaka', 'Prince'),
(5, 5, 'Kiki', 'Protagonist'),
(6, 6, 'Arrietty', 'Protagonist'),
(7, 7, 'Anna', 'Protagonist'),
(8, 8, 'Jiro', 'Protagonist'),
(9, 9, 'Kaguya', 'Princess'),
(10, 10, 'Ponyo', 'Protagonist'),
(11, 11, 'Nausicaa', 'Princess'),
(12, 12, 'Sheeta', 'Princess'),
(13, 13, 'Pazu', 'Protagonist'),
(14, 14, 'Satsuki', 'Protagonist'),
(15, 15, 'Kiki', 'Protagonist'),
(16, 16, 'Taeko', 'Protagonist'),
(17, 17, 'Porco', 'Protagonist'),
(18, 18, 'Taku', 'Protagonist'),
(19, 19, 'Ponkotsu', 'Protagonist'),
(20, 20, 'Shizuku', 'Protagonist'),
(21, 21, 'San', 'Protagonist'),
(22, 22, 'Taro', 'Protagonist'),
(23, 23, 'Chihiro', 'Protagonist'),
(24, 24, 'Haru', 'Protagonist');

-- Box Office
INSERT INTO box_office VALUES 
(1, 1, 355.5),
(2, 2, 45.0),
(3, 3, 0.5),
(4, 4, 159.4),
(5, 5, 41.7),
(6, 6, 145.6),
(7, 7, 34.4),
(8, 8, 136.8),
(9, 9, 75.6),
(10, 10, 203.7),
(11, 11, 63.8),
(12, 12, 62.2),
(13, 13, 62.2),
(14, 14, 45.0),
(15, 15, 41.7),
(16, 16, 23.8),
(17, 17, 34.6),
(18, 18, 14.5),
(19, 19, 38.5),
(20, 20, 26.6),
(21, 21, 159.4),
(22, 22, 23.4),
(23, 23, 355.5),
(24, 24, 65.9);

--List of movies based on the directors
SELECT m.title,m.release_year,d.name AS director
FROM movies m
JOIN directors d ON m.director_id=d.director_id;

--Get the highest-rated movies Based on IMDB
SELECT m.title,r.imdb_rating
FROM movies m
JOIN ratings r ON
m.movie_id=r.movie_id
ORDER BY r.imdb_rating DESC;

--Finding total box office revenue per director
SELECT d.name AS director,SUM(b.revenue_million) AS
total_revenue FROM directors d
JOIN movies m ON
d.director_id=m.director_id
JOIN box_office b ON
m.movie_id=b.movie_id
GROUP BY d.name
ORDER BY total_revenue DESC;

--List all characters and the movies they appear in
SELECT c.name AS character ,c.role,m.title
FROM characters c
JOIN movies m ON c.movie_id=m.movie_id;

--Count of movies per genre
SELECT genre ,COUNT(*) AS
num_movies
FROM movies
GROUP BY genre;

--Find movies released between 1990 and 2000
SELECT title,release_year
FROM movies
WHERE release_year BETWEEN 1990 AND 2000;

--Movies with Rotten Tomato score over 90
SELECT m.title ,r.rt_score 
FROM movies m
JOIN ratings r ON
m.movie_id=r.movie_id
WHERE r.rt_score > 90;

--Average movie duration by genre
SELECT genre,AVG(duration_mins) AS
avg_duration FROM movies
GROUP BY genre;


CREATE TABLE full_movie_info AS
select
	m.movie_id,
    m.title,
    m.release_year,
    m.genre,
    m.duration_mins,
    m.description,
    d.name AS director_name,
    r.imdb_rating,
    r.rt_score,
    c.name AS character_name,
    c.role,
    b.revenue_million AS box_office
FROM 
movies m
JOIN directors d ON m.director_id = d.director_id
JOIN ratings r ON m.movie_id = r.movie_id
JOIN characters c ON m.movie_id = c.movie_id
JOIN box_office b ON m.movie_id = b.movie_id;

--Adding all tables into single 
SELECT    
    m.movie_id,m.title,m.release_year,
	m.genre,m.duration_mins,m.description,
    d.name AS director_name,
    r.imdb_rating,r.rt_score,
    c.name AS character_name,c.role,
    b.revenue_million AS box_office
FROM 
 movies m
JOIN directors d ON m.director_id = d.director_id
JOIN ratings r ON m.movie_id = r.movie_id
JOIN characters c ON m.movie_id = c.movie_id
JOIN box_office b ON m.movie_id = b.movie_id;




CREATE TABLE full_movie_info (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    release_year INT,
    genre VARCHAR(50),
    duration_mins INT,
    description TEXT,
    director_name VARCHAR(100),
    imdb_rating DECIMAL(3,1),
    rt_score INT,
    character_name VARCHAR(100),
    role VARCHAR(100),
    box_office DECIMAL(10,2)
);

INSERT INTO full_movie_info
SELECT    
    m.movie_id,
    m.title,
    m.release_year,
    m.genre,
    m.duration_mins,
    m.description,
    d.name AS director_name,
    r.imdb_rating,
    r.rt_score,
    c.name AS character_name,
    c.role,
    b.revenue_million AS box_office
FROM 
    movies m
JOIN directors d ON m.director_id = d.director_id
JOIN ratings r ON m.movie_id = r.movie_id
JOIN characters c ON m.movie_id = c.movie_id
JOIN box_office b ON m.movie_id = b.movie_id;


select * from full_movie_info;