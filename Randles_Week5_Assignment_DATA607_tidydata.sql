-- Week 5 Assignment, DATA607, Fall 2016
-- Leland Randles
-- Drop wide_flights database if it exists and then create wide_flights database
DROP SCHEMA IF EXISTS `wide_flights`;
CREATE SCHEMA `wide_flights`;

-- Select newly created schema as default schema
USE wide_flights; 

-- Drop the wide_airlines table if it exists
DROP TABLE IF EXISTS wide_flights;

-- Create the wide_flights table
CREATE TABLE wide_flights (id int PRIMARY KEY, airline varchar(20), arrival_status varchar(20), 
	los_angeles int, phoenix int, san_diego int, san_francisco int, seattle int);

-- Populate wide_flights table
INSERT INTO wide_flights (id, airline, arrival_status, los_angeles, phoenix, san_diego, san_francisco, seattle) 
VALUES (1, 'ALASKA', 'on time', 497, 221, 212, 503, 1841);
INSERT INTO wide_flights (id, airline, arrival_status, los_angeles, phoenix, san_diego, san_francisco, seattle) 
VALUES (2, 'ALASKA', 'delayed', 62, 12, 20, 102, 305);
INSERT INTO wide_flights (id, airline, arrival_status, los_angeles, phoenix, san_diego, san_francisco, seattle) 
VALUES (3, 'AMWEST', 'on time', 694, 4840, 383, 320, 201);
INSERT INTO wide_flights (id, airline, arrival_status, los_angeles, phoenix, san_diego, san_francisco, seattle) 
VALUES (4, 'AMWEST', 'delayed', 117, 415, 65, 129, 61);