-- Drop the database if it already exists and then create it
DROP DATABASE IF EXISTS mr_haulage_order_details;
CREATE DATABASE mr_haulage_order_details;
USE mr_haulage_order_details;

-- Drop the tables if they already exist
DROP TABLE IF EXISTS temporary_table;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Items;
DROP TABLE IF EXISTS Regions;
DROP TABLE IF EXISTS Orders;

-- Use Database
USE mr_haulage_order_details;

-- Create the initial table to load dataset from the cleansed CSV file
CREATE TABLE temporary_table (
    customer_id INT,
    order_date DATE,
    order_time TIME,
    item_serial INT,
    box_type VARCHAR(10),
    delivery_region VARCHAR(50),
    distance_miles INT,
    order_month VARCHAR(20),
    order_year INT,
    financial_quarter VARCHAR(5)
);

SET GLOBAL local_infile=1;

-- Load the dataset into the 'temporary_table'
LOAD DATA LOCAL INFILE '/Users/lottiejanepollare/Library/Mobile Documents/com~apple~CloudDocs/CV, Profiles, Interviews & Job Applications/applications/techmodal_analyst_data_engineer/20230825_Analyst_case_study_submission_Lottie_Jane_Pollard/datasets/cleansed_mr_haulage_order_details.csv'
INTO TABLE temporary_table
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
--  Can't find the permission to allow it to load in local infiles

-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY
);


-- Create Items Table
CREATE TABLE Items (
    item_serial INT PRIMARY KEY,
    box_type VARCHAR(10)
);


-- Create Regions Table
CREATE TABLE Regions (
    region_id INT AUTO_INCREMENT PRIMARY KEY,
    delivery_region VARCHAR(50)
);


-- Create Orders Table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    item_serial INT,
    region_id INT,
    order_date DATE,
    order_time TIME,
    distance_miles INT,
    order_month VARCHAR(20),
    order_year INT,
    financial_quarter VARCHAR(5),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (item_serial) REFERENCES Items(item_serial),
    FOREIGN KEY (region_id) REFERENCES Regions(region_id)
);


-- Populate Customers Table
INSERT IGNORE INTO Customers (customer_id)
SELECT DISTINCT customer_id FROM temporary_table;

-- Populate Items Table
INSERT IGNORE INTO Items (item_serial, box_type)
SELECT DISTINCT item_serial, box_type FROM temporary_table;

-- Populate Regions Table
INSERT IGNORE INTO Regions (delivery_region)
SELECT DISTINCT delivery_region FROM temporary_table;

-- Populate Orders Table
INSERT INTO Orders (customer_id, item_serial, region_id, order_date, order_time, distance_miles, order_month, order_year, financial_quarter)
SELECT temporary_table.customer_id, temporary_table.item_serial, Regions.region_id, order_date, order_time, distance_miles, order_month, order_year, financial_quarter
FROM temporary_table
JOIN Regions ON temporary_table.delivery_region = Regions.delivery_region;


-- Delete initial table
DROP TABLE temporary_table;






