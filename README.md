
# 🛠️ Technical Support Request Management System

![SQL](https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge&logo=mysql)
![Focus](https://img.shields.io/badge/Focus-Data%20Analysis-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## 📌 Project Overview
This project involves the design and implementation of a robust relational database system tailored for a Technical Support Department. Inspired by real-world fintech operations (e.g., Viva Wallet), it simulates a production environment for tracking ticket lifecycles, monitoring agent performance, and identifying recurring product defects through data-driven insights.

## 🗄️ Database Architecture
The system follows a normalized schema to ensure data integrity.

* **👥 Customers:** Stores customer information.
* **📦 Products:** Software solutions (e.g., POS, ERP).
* **👨‍💻 Agents:** Technical support staff profiles and performance tracking.
* **🎫 Support_Tickets:** The core table recording all requests (includes Status, Priority, Dates).

> *The creation script can be found in `Schema_Creation.sql`.*

🔎 Analytical Business Logic (SQL Case Studies)
The Key_Queries.sql file addresses critical operational challenges using advanced SQL techniques:

Focus Area	Business Insight / Task	Technical Implementation			
SLA & Efficiency	Calculated Average Resolution Time to monitor department performance.	AVG() with DATEDIFF() functions			
Product Health	Identified "Top 5 Products" with the most open requests to pinpoint recurring defects.	GROUP BY & ORDER BY aggregations			
Urgency Management	Filtered all High/Urgent priority tickets that remain Open or In Progress.	Complex WHERE clauses with logical operators			
Agent Performance	Measured individual efficiency by counting total resolved tickets per technician.	COUNT() & JOIN operations			
Customer Retention	Detected high-volume ticket generators for proactive account management.	LIMIT & COUNT() analysis			
Data Integrity	Executed status transitions (e.g., from Open to Closed) after resolution.	UPDATE statements for workflow automation			

🛠️ Tech Stack

Language: SQL (MySQL)
Development Tools: GitHub
Design: Relational Database Modeling

## 🚀 How to Use
1.  Run `Schema_Creation.sql` to set up the database tables.
2.  Run `Data Insertion Samples.sql` to populate tables with dummy data.
3.  Execute `Key_Queries.sql` to view the analysis
