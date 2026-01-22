Query 1: Find all open or in progress requests, sorted by high priority (High/Urgent), so you know what you need to deal with immediately.

SELECT
    T.ticket_id,
    T.subject,
    C.company_name AS Customer,
    P.product_name AS Product,
    T.status,
    T.priority,
    T.date_created
FROM
    Support_Tickets T
JOIN
    Customers C ON T.customer_id = C.customer_id
JOIN
    Products P ON T.product_id = P.product_id
WHERE
    T.status IN ('Open', 'In Progress')  -- Ενεργά Tickets
    AND T.priority IN ('Urgent', 'High') -- Υψηλή Προτεραιότητα
ORDER BY
    CASE
        WHEN T.priority = 'Urgent' THEN 1
        WHEN T.priority = 'High' THEN 2
        ELSE 3
    END,
    T.date_created ASC;
 
 

Query 2: The 5 most problematic products (based on open Tickets).
SELECT
    P.product_name,
    COUNT(T.ticket_id) AS Open_Tickets_Count
FROM
    Support_Tickets T
JOIN
    Products P ON T.product_id = P.product_id
WHERE
    T.status = 'Open'
GROUP BY
    P.product_name
ORDER BY
    Open_Tickets_Count DESC
LIMIT 5;


Query 3: Total number of resolved Tickets per Technical Agent.
SELECT
    CONCAT(A.first_name, ' ', A.last_name) AS Agent_Name,
    COUNT(T.ticket_id) AS Closed_Tickets_Count
FROM
    Support_Tickets T
JOIN
    Agents A ON T.agent_id = A.agent_id
WHERE
    T.status = 'Closed'
GROUP BY
    Agent_Name
ORDER BY
    Closed_Tickets_Count DESC;


Query 4: Status Management: UPDATE command to change the status of a Ticket to 'Closed' after resolution.

UPDATE Support_Tickets
SET
    status = 'Closed',
    agent_id = 1 -- Ο George το έκλεισε
WHERE
    ticket_id = 4;

-- Check that the update was successful:
SELECT ticket_id, subject, status, priority FROM Support_Tickets WHERE ticket_id = 4;


Query 5: Find the 3 customers with the highest total volume of Tickets.

SELECT
    C.company_name AS Customer_Company,
    COUNT(T.ticket_id) AS Total_Tickets_Submitted
FROM
    Support_Tickets T
JOIN
    Customers C ON T.customer_id = C.customer_id
GROUP BY
    C.company_name
ORDER BY
    Total_Tickets_Submitted DESC
LIMIT 3;


Query 6: Calculate the average resolution time (in days) for closed Tickets.
SELECT
    AVG(DATEDIFF(NOW(), T.date_created)) AS Avg_Resolution_Days
FROM
    Support_Tickets T
WHERE
    T.status = 'Closed';



