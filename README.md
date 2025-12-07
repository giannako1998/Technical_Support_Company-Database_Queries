---TECHNICAL SUPPORT COMPANY--


This repository contains the SQL schema and analytical queries for a Technical Support Request Management System.


Database Structure

The schema consists of 4 main tables, which are connected via Foreign Keys: 
*Customers : Customer Information. 
*Products : Software solutions (e.g., POS, ERP). 
*Agents : Support Technicians.
*Support_Tickets : Recording of all requests (with Status and Priority columns).

The creation script is Schema_Creation.sql



Key Queries & Analysis

The Key_Queries.sql file contains queries for the daily tasks of a Technical Support Consultant.


*Query 1* Extract all Open or In Progress Tickets with High/Urgent Priority. 

*Query 2* Find the 5 products with the most open requests.

*Query 3* Calculation of the total number of resolved (Closed) Tickets per Agent.

*Query 4* UPDATE statement to change the status of a Ticket to 'Closed' after resolution.

*Query 5* Find the 3 customers with the highest total volume of Tickets. 

*Query 6* Calculate the average resolution time (in days) for closed Tickets.
