-- Δεδομένα Πελατών (Customers)
INSERT INTO Customers (first_name, last_name, company_name, email, phone_number) VALUES
('Nikolaos', 'Pappas', 'RetailPro AE', 'nikos.pappas@rp.gr', '2101234567'),
('Maria', 'Georgiou', 'ElectroTech', 'maria.geo@et.com', '2109876543'),
('Dimitrios', 'Athanasiou', 'SmallMarket O.E.', 'd.ath@sm.gr', '6940112233');

-- Δεδομένα Προϊόντων (Products)
INSERT INTO Products (product_name, version, description) VALUES
('Retail POS Solution', 'v5.2', 'Complete Point-of-Sale system for retail.'),
('Accounting ERP', 'v8.1', 'Enterprise Resource Planning for finance and logistics.'),
('Mobile Sales App', 'v1.0', 'Application for remote sales order entry.');

-- Δεδομένα Agents (Τεχνικοί Υποστήριξης) - Εσύ είσαι ο 1
INSERT INTO Agents (first_name, last_name, email) VALUES
('George', 'Giannakopoulos', 'george@entersoftone.com'),
('Eleni', 'Konstantinou', 'eleni@entersoftone.com');

-- Δεδομένα Αιτημάτων Υποστήριξης (Support_Tickets)
INSERT INTO Support_Tickets (customer_id, agent_id, product_id, subject, status, priority, date_created) VALUES
-- Ticket 1: Υψηλή Προτεραιότητα, Open, ανατέθηκε στον George (1)
(1, 1, 1, 'POS crashes after daily closing procedure', 'Open', 'High', '2025-11-17 10:00:00'),
-- Ticket 2: Μεσαία Προτεραιότητα, In Progress, ανατέθηκε στην Eleni (2)
(2, 2, 2, 'Cannot generate Q3 Financial Report', 'In Progress', 'Medium', '2025-11-16 14:30:00'),
-- Ticket 3: Χαμηλή Προτεραιότητα, Open, δεν έχει ανατεθεί ακόμα
(3, NULL, 1, 'Request for new user account setup (Retail POS)', 'Open', 'Low', '2025-11-17 11:45:00'),
-- Ticket 4: Urgent, Open, ανατέθηκε στον George (1)
(1, 1, 3, 'Mobile Sales App fails to sync inventory data', 'Open', 'Urgent', '2025-11-17 12:15:00'),
-- Ticket 5: Έχει κλείσει
(2, 2, 2, 'Issue with VAT calculation on old invoices (Resolved)', 'Closed', 'Medium', '2025-11-15 09:00:00');