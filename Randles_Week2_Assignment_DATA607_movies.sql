-- Week 2 Assignment, DATA607, Fall 2016
-- Leland Randles
-- Drop movies database if it exists and then create movies database
DROP SCHEMA IF EXISTS `movies` ;
CREATE SCHEMA `movies` ;

-- Select newly created schema as default schema
USE movies; 

-- Drop the movies and viewers tables if they exist
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS viewers;

-- Create the movies table
CREATE TABLE movies (movie_id int PRIMARY KEY, 
	movie_name varchar(50) NOT NULL, release_yr int, genre varchar(25));

-- Populate movies table
INSERT INTO movies (movie_id, movie_name, release_yr, genre) VALUES (1, 'In the Heart of the Sea', 2015, 'Drama');
INSERT INTO movies (movie_id, movie_name, release_yr, genre) VALUES (2, 'The Peanuts Movie', 2015, 'Children');
INSERT INTO movies (movie_id, movie_name, release_yr, genre) VALUES (3, 'Jupiter Ascending', 2015, 'SciFi');
INSERT INTO movies (movie_id, movie_name, release_yr, genre) VALUES (4, 'Maze Runner: Scorch Trials', 2015, 'SciFi');
INSERT INTO movies (movie_id, movie_name, release_yr, genre) VALUES (5, 'Spy', 2015, 'Comedy');
INSERT INTO movies (movie_id, movie_name, release_yr, genre) VALUES (6, 'Furious 7', 2015, 'Action');
INSERT INTO movies (movie_id, movie_name, release_yr, genre) VALUES (7, 'Pan', 2015, 'Children');
INSERT INTO movies (movie_id, movie_name, release_yr, genre) VALUES (8, 'Everest', 2015, 'Action');

-- Create the ratings table
CREATE TABLE ratings (ratings_id int PRIMARY KEY, viewer_id int, movie_id int, rating int);

-- Populate ratings 
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (1, 1, 2, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (2, 1, 7, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (3, 2, 2, 4);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (4, 2, 7, 1);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (5, 3, 1, 4);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (6, 3, 5, 4);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (7, 3, 6, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (8, 3, 8, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (9, 4, 1, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (10, 4, 3, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (11, 4, 4, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (12, 4, 5, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (13, 4, 6, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (14, 4, 7, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (15, 4, 8, 4);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (16, 5, 1, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (17, 5, 2, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (18, 5, 3, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (19, 5, 4, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (20, 5, 5, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (21, 5, 6, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (22, 5, 7, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (23, 5, 8, 4);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (24, 6, 1, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (25, 6, 2, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (26, 6, 4, 5);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (27, 6, 5, 4);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (28, 6, 6, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (29, 6, 7, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (30, 6, 8, 4);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (31, 7, 1, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (32, 7, 5, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (33, 7, 6, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (34, 7, 7, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (35, 7, 8, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (36, 8, 1, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (37, 8, 2, 5);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (38, 8, 5, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (39, 8, 6, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (40, 8, 7, 4);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (41, 8, 8, 5);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (42, 9, 1, 4);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (43, 9, 2, 4);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (44, 9, 3, 1);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (45, 9, 4, 3);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (46, 9, 5, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (47, 9, 6, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (48, 9, 7, 2);
INSERT INTO ratings (ratings_id, viewer_id, movie_id, rating) VALUES (49, 9, 8, 4);

-- Create the viewers table
CREATE TABLE viewers (viewer_id int PRIMARY KEY, 
	viewer_name varchar(50) NOT NULL, age int, sex varchar(1));

-- Populate viewers table
INSERT INTO viewers (viewer_id, viewer_name, age, sex) VALUES (1, 'Elijah', 10, 'M');
INSERT INTO viewers (viewer_id, viewer_name, age, sex) VALUES (2, 'Althea', 9, 'F');
INSERT INTO viewers (viewer_id, viewer_name, age, sex) VALUES (3, 'Amy', 49, 'F');
INSERT INTO viewers (viewer_id, viewer_name, age, sex) VALUES (4, 'Jon', 49, 'M');
INSERT INTO viewers (viewer_id, viewer_name, age, sex) VALUES (5, 'Ben', 42, 'M');
INSERT INTO viewers (viewer_id, viewer_name, age, sex) VALUES (6, 'Katie', 41, 'F');
INSERT INTO viewers (viewer_id, viewer_name, age, sex) VALUES (7, 'Tim', 75, 'M');
INSERT INTO viewers (viewer_id, viewer_name, age, sex) VALUES (8, 'Jean', 72, 'F');
INSERT INTO viewers (viewer_id, viewer_name, age, sex) VALUES (9, 'Lee', 48, 'M');

-- Create materialized view to bring into R as data frame that shows all 
-- ratings with info aboutthe movie being rated and the person rating it
CREATE VIEW v_ratings_history 
AS SELECT r.ratings_id, r.rating, m.*, v.*
FROM ratings r INNER JOIN movies m ON r.movie_id = m.movie_id 
INNER JOIN viewers v ON r.viewer_id = v.viewer_id



