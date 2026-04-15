# SQL Data Warehouse Simulation Project

 📌 Overview
This project is a simple SQL-based data simulation that models how customer orders and payments work in a basic business system.

It was built as part of my learning in databases and information systems, with a focus on understanding how data is stored, connected, and analysed using SQL.

---

 🧠 What this project does
The database simulates a small business scenario with:

- Customers who place orders
- Orders that contain purchase amounts
- Payments linked to each order

Using SQL, I then analysed the data to understand customer behaviour and transaction patterns.

---

 🗂️ Database Structure

The project has 3 main tables:

 1. Customers
Stores basic customer information like:
- Customer ID
- Name
- City

 2. Orders
Stores order details:
- Order ID
- Customer ID (link to customer)
- Amount
- Order date

 3. Payments
Stores payment information:
- Payment method (Card or Cash)
- Payment status (Completed / Failed)
- Linked to orders

---

 🔗 Relationships
- One customer can have multiple orders
- Each order is linked to one payment record

This helped me understand how relational databases connect data across multiple tables using keys.

---

 📊 SQL Analysis Performed

The following types of analysis were done:

 1. Customer Spending
Calculated total spending per customer using SUM and GROUP BY.

 2. Payment Filtering
Filtered payments to only show successful transactions.

 3. Payment Method Analysis
Counted how many transactions were done using card vs cash.

 4. Customer Order View
Joined customers and orders to see full order history per customer.

 5. Full Transaction View
Joined all three tables (customers, orders, payments) to see the full flow of a transaction.

---

 🧠 What I learned
Through this project, I learned:

- How relational databases work
- How to use JOINs across multiple tables
- How to aggregate data using SQL functions like SUM and COUNT
- How basic data analysis is done using structured data

---

 🚀 Tools Used
- SQLite (via DB Browser for SQLite)
- SQL (SELECT, JOIN, GROUP BY, WHERE)

---

 📌 Purpose
This project was created to strengthen my understanding of:
- Data modelling
- SQL querying
- Basic data warehouse thinking (Extract → Transform → Analyse)

It is part of my preparation for data-related internship opportunities.
