CREATE DATABASE crm_database;
USE crm_database;

-- Table for Customers
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    address VARCHAR(255)
);

-- Table for Interactions
CREATE TABLE interactions (
    interaction_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    interaction_date DATE,
    interaction_type VARCHAR(50),  -- e.g., call, email, meeting
    notes TEXT
);

-- Table for Sales Leads
CREATE TABLE sales_leads (
    lead_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    lead_source VARCHAR(100),  -- e.g., website, referral, trade show
    lead_status VARCHAR(50),  -- e.g., cold, warm, hot
    lead_owner VARCHAR(50),   -- Salesperson responsible for the lead
    follow_up_date DATE
);
