
# 🛠️ Technical Support Request Management System

![SQL](https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge&logo=mysql)
![Focus](https://img.shields.io/badge/Focus-Data%20Analysis-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## 📌 Project Overview
This repository contains the SQL schema and analytical queries for a **Technical Support Request Management System**. It simulates a real-world scenario of tracking tickets, agent performance, and product issues.

## 🗂️ Database Structure
The schema consists of 4 main tables connected via **Foreign Keys**:

* **👥 Customers:** Stores customer information.
* **📦 Products:** Software solutions (e.g., POS, ERP).
* **👨‍💻 Agents:** Support Technicians details.
* **🎫 Support_Tickets:** The core table recording all requests (includes Status, Priority, Dates).

> *The creation script can be found in `Schema_Creation.sql`.*

## 🔎 Key Queries & Analysis
The `Key_Queries.sql` file contains queries designed to answer daily business questions for a Technical Support Consultant.

| Query ID | Business Question / Task |
| :--- | :--- |
| **Query 1** | Extract all **Open** or **In Progress** Tickets with **High/Urgent** Priority. |
| **Query 2** | Identify the **Top 5 products** with the most open requests (Pain points). |
| **Query 3** | Calculate the total number of resolved (Closed) Tickets **per Agent** (Performance Metric). |
| **Query 4** | **UPDATE** statement to change a Ticket's status to 'Closed' after resolution. |
| **Query 5** | Find the **Top 3 Customers** with the highest volume of tickets. |
| **Query 6** | Calculate the **Average Resolution Time** (in days) for closed tickets. |

## 🚀 How to Use
1.  Run `Schema_Creation.sql` to set up the database tables.
2.  Run `Data Insertion Samples.sql` to populate tables with dummy data.
3.  Execute `Key_Queries.sql` to view the analysis
