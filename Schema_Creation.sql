CREATE DATABASE `Technical Support Company`;

USE `Technical Support Company`;

-- 1. Table: Customers (Customers) --
-- Contains basic information about the company's customers.
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    company_name VARCHAR(100),
    email VARCHAR(100)  NOT NULL,
    phone_number VARCHAR(20)
);

-- 2. Table: Products --
-- Represents the software products (e.g., Retail Solution, ERP) that are supported.
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    version VARCHAR(20),
    description TEXT
);

-- 3. Table: Agents --
-- The users who resolve requests.
CREATE TABLE Agents (
    agent_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);


-- 4. Table: Support_Tickets --
-- The central table that records all issues.
CREATE TABLE Support_Tickets (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    agent_id INT, -- Μπορεί να είναι NULL αν δεν έχει ανατεθεί ακόμα
    product_id INT NOT NULL,
    subject VARCHAR(255) NOT NULL,
    description TEXT,
    date_created DATETIME NOT NULL,
    status VARCHAR(20) NOT NULL, -- Τιμές: 'Open', 'In Progress', 'Closed', 'Pending'
    priority VARCHAR(20) NOT NULL, -- Τιμές: 'Low', 'Medium', 'High', 'Urgent'

-- Foreign Keys --
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (agent_id) REFERENCES Agents(agent_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
