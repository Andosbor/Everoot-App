DROP DATABASE IF EXISTS everoot_db;

CREATE DATABASE everoot_db;

USE everoot_db;

/*Manager view*/

/*Energy Conservation Tracker*/

CREATE TABLE ec_tracker(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
month_name VARCHAR(50) NOT NULL,
energy_expenditure VARCHAR(50) NOT NULL,
expense DECIMAL(10,2) DEFAULT 0
/* stock_quantity INT DEFAULT 0 */
);

INSERT INTO ec_tracker(month_name,energy_expenditure,expense)
VALUES ("January", "10.399 kWh", 110.21),
	   ("February","15.5 kWh",0),
       ("March","",0),
       ("April","",0),
       ("May","", 0),
       ("June","",0),
       ("July","",0),
       ("August","",0),
       ("September","",0),
       ("October","",0),
       ("November","",0),
       ("December","",0);


SELECT FORMAT(SUM(energy_expenditure),
2)total FROM ec_tracker; 

/*SELECT * FROM ec_tracker;*/

/*Water Conservation Tracker */

CREATE TABLE wc_tracker(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
month_name VARCHAR(50) NOT NULL,
water_expenditure VARCHAR(50) NOT NULL,
expense DECIMAL(10,2) DEFAULT 0
);

INSERT INTO wc_tracker(month_name,water_expenditure,expense)
VALUES ("January", "95 gallons", 80),
	   ("February","",0),
       ("March","",0),
       ("April","",0),
       ("May","", 0),
       ("June","",0),
       ("July","",0),
       ("August","",0),
       ("September","",0),
       ("October","",0),
       ("November","",0),
       ("December","",0);
 /*      ("Total water used in the last fiscal year","",0); */

/*SELECT * FROM wc_tracker;*/

/*Waste Reduction Tracker*/

CREATE TABLE wr_tracker(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
month_name VARCHAR(50) NOT NULL,
trash_bags DECIMAL(10) DEFAULT 0,
compost_bins DECIMAL(10) DEFAULT 0,
recycle_bins DECIMAL(10) DEFAULT 0,
hazardous_waste_bins DECIMAL(10) DEFAULT 0,
totals DECIMAL(10) DEFAULT 0

);

INSERT INTO wr_tracker(month_name,trash_bags,compost_bins,recycle_bins,hazardous_waste_bins,totals)
VALUES ("January", 6, 4,6,1,17),
	   ("February",0,0,0,0,0),
       ("March",0,0,0,0,0),
       ("April",0,0,0,0,0),
       ("May",0,0,0,0,0),
       ("June",0,0,0,0,0),
       ("July",0,0,0,0,0),
       ("August",0,0,0,0,0),
       ("September",0,0,0,0,0),
       ("October",0,0,0,0,0),
       ("November",0,0,0,0,0),
       ("December",0,0,0,0,0);
 /*      ("Total waste",0,0,0,0,0); */

/*SELECT * FROM wr_tracker;*/

/* Carbon Reduction Tracker */

CREATE TABLE cr_tracker(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
month_name VARCHAR(50) NOT NULL,
carbon_expenditure VARCHAR(50) NOT NULL,
offset_cost DECIMAL(10,2) DEFAULT 0
);

INSERT INTO cr_tracker(month_name,carbon_expenditure,offset_cost)
VALUES ("January", "16.4 metric tons", 28),
	   ("February","",0),
       ("March","",0),
       ("April","",0),
       ("May","", 0),
       ("June","",0),
       ("July","",0),
       ("August","",0),
       ("September","",0),
       ("October","",0),
       ("November","",0),
       ("December","",0);
/*       ("Total carbon expenditure","",0); */

/*SELECT * FROM cr_tracker;*/

/* Employee Data */

CREATE TABLE employee_data(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
month_name VARCHAR(50) NOT NULL,
commute_distance DECIMAL(10) NOT NULL,
travel_to_work_days DECIMAL(10) DEFAULT 0
);

INSERT INTO employee_data(month_name,commute_distance,travel_to_work_days)
VALUES ("January", 6, 20),
	   ("February",0,0),
       ("March",0,0),
       ("April",0,0),
       ("May",0, 0),
       ("June",0,0),
       ("July",0,0),
       ("August",0,0),
       ("September",0,0),
       ("October",0,0),
       ("November",0,0),
       ("December",0,0);
/*       ("Total carbon expenditure","",0); */

/* SELECT AVG(commute_distance)'Average commute distance' FROM employee_data; */

/* SELECT * FROM employee_data; */

