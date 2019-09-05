DROP DATABASE IF EXISTS everoot_db;

CREATE DATABASE everoot_db;

USE everoot_db;

/*-------------------------------------------Environmental Stewardship----------------------------------------------*/

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


/*SELECT FORMAT(SUM(energy_expenditure), 2)total FROM ec_tracker; */

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

CREATE TABLE employee_travel_data(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
month_name VARCHAR(50) NOT NULL,
commute_distance DECIMAL(10) NOT NULL,
travel_to_work_days DECIMAL(10) DEFAULT 0
);

INSERT INTO employee_travel_data(month_name,commute_distance,travel_to_work_days)
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

/* SELECT * FROM employee_travel_data; */

/*--------------------------------------------Health & Wellness-----------------------------------------------*/

/* Employee Data */

CREATE TABLE employee_names(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL

);

INSERT INTO employee_names(employee_name)
VALUES ("Joe Shmo"),
	   (""),
       (""),
       (""),
       (""),
       (""),
       (""),
       (""),
       (""),
       (""),
       (""),
       ("");


 /*SELECT * FROM employee_names; */
 
 /*Fitness Tracker */

CREATE TABLE fitness_tracker(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
membership VARCHAR(50) NOT NULL,
annual_payment DECIMAL(10,2) NOT NULL,
total_yearly_reimbursement DECIMAL(10,2) DEFAULT 0,
reimbursed TINYINT(1) DEFAULT 0
);

INSERT INTO fitness_tracker(membership,annual_payment,total_yearly_reimbursement,reimbursed)
VALUES ("Power of Your Om", 528.00, 0,0),
	   ("",0,0,0),
       ("",0,0,0);


/*SELECT * FROM fitness_tracker;*/

/*Travel and Commute Tracker */

CREATE TABLE travel_commute_tracker(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
total_round_trip_bike_rides DECIMAL(10) NOT NULL,
$_in_tokens_earned DECIMAL(10,2) NOT NULL,
redeemed TINYINT(1) DEFAULT 0
);

INSERT INTO travel_commute_tracker(total_round_trip_bike_rides,$_in_tokens_earned,redeemed)
VALUES (0, 20, 1),
	   (0,0,0),
       (0,0,0);


/*SELECT * FROM travel_commute_tracker;*/

/* Education Tracker */

CREATE TABLE education_tracker(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
events_attended VARCHAR(50) NOT NULL,
course_learnings VARCHAR(50) NOT NULL,
all_approved TINYINT(1) DEFAULT 0,
hours DECIMAL(10) DEFAULT 0,
total_expenses DECIMAL(10,2),
total_yearly_reimbursement DECIMAL (10,2),
reimbursed TINYINT(1) DEFAULT 0
);

INSERT INTO education_tracker(events_attended,course_learnings,all_approved,hours,total_expenses,total_yearly_reimbursement,reimbursed)
VALUES ("", "", 0,6,22.00,22,0),
	   ("", "", 0,0,0,0,0);

 /*SELECT * FROM education_tracker; */
 
 /*Goal Tracker*/
 
 CREATE TABLE goal_tracker(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
quarterly_goal VARCHAR(50) NOT NULL,
career_goal VARCHAR(50) NOT NULL,
personal_goal VARCHAR(50) NOT NULL,
reviewed TINYINT(1) DEFAULT 0
);

INSERT INTO goal_tracker(quarterly_goal,career_goal,personal_goal,reviewed)
VALUES ("", "", "",0),
	   ("", "", "",0);
 
 /* SELECT * FROM goal_tracker; */
 

/*-------------------------------------------Community Engagement----------------------------------------------*/

/*Volunteer Time Tracker*/
 
CREATE TABLE volunteer_time_tracker(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
organization_name VARCHAR(50) NOT NULL,
volunteer_time DECIMAL(10,2) NOT NULL,
notes VARCHAR(300) NOT NULL,
reimbursement DECIMAL(10,2) NOT NULL,
reimbursed TINYINT(1) DEFAULT 0
);

INSERT INTO volunteer_time_tracker(employee_name,organization_name,volunteer_time,notes,reimbursement,reimbursed)
VALUES ("James Young", "Surfrider Foundation", 1.5,"volunteered at a trash pick up on leadbetter beach",10, 1),
	   ("", "", 0,"",0,0);
 
/*SELECT * FROM volunteer_time_tracker; */

/*Employee Give Tracker*/
 
CREATE TABLE employee_give_tracker(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
organization_name VARCHAR(50) NOT NULL,
donation_link VARCHAR(200) NOT NULL,
date_of_donation VARCHAR(50) NOT NULL,
financial_give_value DECIMAL(10,2) NOT NULL,
receipt_sent_to_manager TINYINT(1) DEFAULT 0,
matched TINYINT(1) DEFAULT 0
);

INSERT INTO employee_give_tracker(employee_name,organization_name,donation_link,date_of_donation,financial_give_value,receipt_sent_to_manager,matched)
VALUES ("James Young", "SB ACT","http://sbact.org/donate/","1/26/2017",375.00, 1,1),
	   ("", "", "","",0,1,1);
 
/*SELECT * FROM employee_give_tracker; */

/*Company Give Tracker*/
 
CREATE TABLE company_give_tracker(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
organization_name VARCHAR(50) NOT NULL,
date_of_donation VARCHAR(50) NOT NULL,
donation_type VARCHAR(50) NOT NULL,
unit_qty VARCHAR(50) NOT NULL,
financial_give_value DECIMAL(10,2) NOT NULL,
donated TINYINT(1) DEFAULT 0,
notes VARCHAR(300) NOT NULL
);

INSERT INTO company_give_tracker(organization_name,date_of_donation,donation_type,unit_qty,financial_give_value,donated,notes)
VALUES ("Surfrider Foundation", "1/18/2017","In Kind Donation","147 snack bites",1789.00, 1,"Donated unites to a surf camp for girls in SB"),
	   ("Surfrider Foundation", "1/27/2017", "Marketing Expenses","1 FB ad",160,1,"ran a facebook ad for Surfrider");
 
/*SELECT * FROM company_give_tracker; */

/*-----------------------------------------------Transparency--------------------------------------------------*/

 /*Sustainable Purchasing*/
 
 CREATE TABLE sustainable_purchasing(
item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
purchase VARCHAR(50) NOT NULL,
source_vendor VARCHAR(50) NOT NULL,
price DECIMAL(10,2) NOT NULL,
the_date VARCHAR(50) NOT NULL
);

INSERT INTO sustainable_purchasing(purchase,source_vendor,price,the_date)
VALUES ("Office Supplies", "Raw Office", 132,"1/1/2014");

 
/* SELECT * FROM sustainable_purchasing; */

