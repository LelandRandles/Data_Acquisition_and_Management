-- Project 2, DATA607, Fall 2016
-- Leland Randles
-- Drop project_two database if it exists and then create project_two database
DROP SCHEMA IF EXISTS `project_two`;
CREATE SCHEMA `project_two`;

-- Select newly created schema as default schema
USE project_two; 

-- Drop tables for three examples, if any exist
DROP TABLE IF EXISTS cross_tab;
DROP TABLE IF EXISTS gender_income;
DROP TABLE IF EXISTS nfl_box_score;

-- Create the cross_tab table
CREATE TABLE cross_tab (mth varchar(15), region1 int, region2 int, region3 int, region4 int, region5 int);

-- Populate wide_flights table
INSERT INTO cross_tab (mth, region1, region2, region3, region4, region5) VALUES ('April', 13, 33, 76, 2, 47);
INSERT INTO cross_tab (mth, region1, region2, region3, region4, region5) VALUES ('May', 17, 55, 209, 1, 143);
INSERT INTO cross_tab (mth, region1, region2, region3, region4, region5) VALUES ('June', 8, 63, 221, 1, 127);
INSERT INTO cross_tab (mth, region1, region2, region3, region4, region5) VALUES ('July', 13, 104, 240, 6, 123);
INSERT INTO cross_tab (mth, region1, region2, region3, region4, region5) VALUES ('August', 18, 121, 274, 9, 111);
INSERT INTO cross_tab (mth, region1, region2, region3, region4, region5) VALUES ('September', 25, 160, 239, 2, 88);
INSERT INTO cross_tab (mth, region1, region2, region3, region4, region5) VALUES ('Octomber', 9, 88, 295, 2, 127);
INSERT INTO cross_tab (mth, region1, region2, region3, region4, region5) VALUES ('November', 2, 86, 292, 2, 120);
INSERT INTO cross_tab (mth, region1, region2, region3, region4, region5) VALUES ('December', 1, 128, 232, 6, 155);

-- Create the gender_income table
CREATE TABLE gender_income (sex varchar(1), age_range varchar(20), under_5000 int, 5000_to_9999 int, 
10000_to_14999 int, 15000_to_19999 int, 20000_to_24999 int, 25000_to_34999 int, 35000_to_49999 int, 
50000_to_74999 int, 75000_to_99999 int, 100000_and_over int);

-- Populate gender_income table
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('M', '15 to 17 years', 10, 3, 20, 4, 7, 9, 8, 3, 0, 0);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('M', '18 to 24 years', 66, 122, 394, 617, 707, 892, 572, 180, 48, 52);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('M', '25 to 29 years', 23, 77, 193, 471, 671, 1350, 1526, 1222, 407, 283);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('M', '30 to 34 years', 55, 55, 162, 332, 509, 1080, 1605, 1655, 688, 664);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('M', '35 to 39 years', 34, 30, 155, 263, 467, 873, 1453, 1638, 810, 1080);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('M', '40 to 44 years', 42, 28, 126, 244, 388, 998, 1506, 1743, 879, 1340);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('M', '45 to 49 years', 18, 46, 159, 281, 429, 902, 1479, 1667, 956, 1444);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('M', '50 to 54 years', 43, 51, 127, 247, 321, 797, 1376, 1793, 970, 1611);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('M', '55 to 59 years', 41, 42, 121, 160, 286, 770, 1035, 1576, 821, 1247);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('M', '60 to 64 years', 31, 13, 75, 124, 168, 456, 733, 981, 414, 785);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('M', '65 years and over', 26, 37, 111, 104, 158, 415, 406, 514, 251, 536);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('F', '15 to 17 years', 1, 6, 12, 10, 6, 12, 5, 2, 0, 2);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('F', '18 to 24 years', 39, 135, 366, 568, 528, 612, 367, 103, 18, 7);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('F', '25 to 29 years', 18, 55, 231, 387, 531, 1284, 1191, 776, 161, 102);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('F', '30 to 34 years', 19, 51, 186, 366, 458, 1026, 1253, 972, 274, 246);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('F', '35 to 39 years', 17, 54, 178, 311, 402, 919, 1153, 1002, 324, 362);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('F', '40 to 44 years', 33, 73, 196, 370, 544, 995, 1269, 1163, 403, 428);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('F', '45 to 49 years', 40, 72, 192, 430, 553, 1065, 1362, 1132, 441, 419);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('F', '50 to 54 years', 22, 61, 195, 391, 505, 1080, 1345, 1283, 496, 473);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('F', '55 to 59 years', 27, 71, 163, 254, 451, 851, 1110, 1063, 438, 421);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('F', '60 to 64 years', 24, 55, 96, 209, 291, 581, 710, 703, 217, 230);
INSERT INTO gender_income (sex, age_range, under_5000, 5000_to_9999, 10000_to_14999, 15000_to_19999, 
20000_to_24999, 25000_to_34999, 35000_to_49999, 50000_to_74999, 75000_to_99999, 100000_and_over) 
VALUES ('F', '65 years and over', 19, 46, 80, 146, 175, 283, 357, 277, 106, 95);

-- Create the nfl_box_score table
CREATE TABLE nfl_box_score (stat varchar(30), sfo varchar(30), sea varchar(30));

-- Populate nfl_box_score table
INSERT INTO nfl_box_score (stat, sfo, sea) VALUES ('First_Downs', '12', '18');
INSERT INTO nfl_box_score (stat, sfo, sea) VALUES ('Rush-Yds-TDs', '31-135-2', '31-127-2');
INSERT INTO nfl_box_score (stat, sfo, sea) VALUES ('Comp-Att-Yd-TD-INT', '14-25-119-0-1', '22-32-308-2-1');
INSERT INTO nfl_box_score (stat, sfo, sea) VALUES ('Sacked-Yards', '0-0', '2-17');
INSERT INTO nfl_box_score (stat, sfo, sea) VALUES ('Net_Pass_Yards', '119', '291');
INSERT INTO nfl_box_score (stat, sfo, sea) VALUES ('Total_Yards', '254', '418');
INSERT INTO nfl_box_score (stat, sfo, sea) VALUES ('Fumbles-Lost', '1-0', '1-1');
INSERT INTO nfl_box_score (stat, sfo, sea) VALUES ('Turnovers', '1', '2');
INSERT INTO nfl_box_score (stat, sfo, sea) VALUES ('Penalties-Yards', '4-35', '6-50');
INSERT INTO nfl_box_score (stat, sfo, sea) VALUES ('Third_Down_Conv', '4-15', '9-14');
INSERT INTO nfl_box_score (stat, sfo, sea) VALUES ('Fourth_Down_Conv', '1-1', '0-0');
INSERT INTO nfl_box_score (stat, sfo, sea) VALUES ('Time_of_Possession', '24:03:00', '35:57:00');