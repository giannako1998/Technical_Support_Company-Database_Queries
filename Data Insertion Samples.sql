-- Customer Data (Customers)
INSERT INTO Customers (first_name, last_name, company_name, email, phone_number) VALUES
('Nikolaos', 'Pappas', 'RetailPro AE', 'nikos.pappas@gmail.com', '2101234567'),
('Maria', 'Georgiou', 'ElectroTech', 'maria.geo@gmail.com', '2109876543'),
('Dimitrios', 'Athanasiou', 'SmallMarket O.E.', 'd.ath@gmail.gr', '6940112233');

-- Product Data (Products)
INSERT INTO Products (product_name, version, description) VALUES
('Retail POS Solution', 'v5.2', 'Complete Point-of-Sale system for retail.'),
('Accounting ERP', 'v8.1', 'Enterprise Resource Planning for finance and logistics.'),
('Mobile Sales App', 'v1.0', 'Application for remote sales order entry.');

-- Agents Data (Support Technicians)
INSERT INTO Agents (first_name, last_name, email) VALUES
('George', 'Giannakopoulos', 'george@gmail.com'),
('Eleni', 'Konstantinou', 'eleni@gmail.com');

-- Support Request Data (Support_Tickets)
INSERT INTO Support_Tickets (customer_id, agent_id, product_id, subject, status, priority, date_created) VALUES
-- Ticket 1: High Priority, Open, assigned to George (1)
(1, 1, 1, 'POS crashes after daily closing procedure', 'Open', 'High', '2025-11-17 10:00:00'),
-- Ticket 2: Medium Priority, In Progress, assigned to Eleni (2)
(2, 2, 2, 'Cannot generate Q3 Financial Report', 'In Progress', 'Medium', '2025-11-16 14:30:00'),
-- Ticket 3: Low Priority, Open, not yet assigned
(3, NULL, 1, 'Request for new user account setup (Retail POS)', 'Open', 'Low', '2025-11-17 11:45:00'),
-- Ticket 4: Urgent, Open, assigned to George (1)
(1, 1, 3, 'Mobile Sales App fails to sync inventory data', 'Open', 'Urgent', '2025-11-17 12:15:00'),
-- Ticket 5: Closed
(2, 2, 2, 'Issue with VAT calculation on old invoices (Resolved)', 'Closed', 'Medium', '2025-11-15 09:00:00');
