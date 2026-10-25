
# Online Bookstore Data Analysis using SQL

## Project Overview
This project focuses on analyzing an online bookstore database using PostgreSQL. It explores book inventory, customer information, order details, sales performance, and revenue through SQL queries.

## Objectives
- Analyze book prices, genres, and publication years.
- Understand customer purchasing behavior.
- Calculate total revenue and books sold.
- Identify the most frequently ordered books.
- Analyze customer spending patterns.
- Calculate remaining inventory after orders.

## Tools & Technologies
- PostgreSQL
- SQL
- pgAdmin 4

## Dataset
The project uses three CSV files:

- **Book.csv:** Book ID, title, author, genre, publication year, price, and stock.
- **customers.csv:** Customer ID, name, email, phone, city, and country.
- **orders.csv:** Order ID, customer ID, book ID, order date, quantity, and total amount.

## Database Tables
The database contains three relational tables:

1. **Books** – Stores book details, prices, genres, and inventory.
2. **Customer** – Stores customer contact and location information.
3. **Orders** – Stores customer purchases and order details.

Primary keys and foreign keys are used to establish relationships between the tables.

## Project Workflow
1. Created database tables using SQL.
2. Imported CSV datasets into PostgreSQL.
3. Explored records using SELECT queries.
4. Filtered and sorted data using WHERE, LIKE, BETWEEN, ORDER BY, and LIMIT.
5. Performed calculations using SUM(), AVG(), and COUNT().
6. Combined tables using INNER JOIN and LEFT JOIN.
7. Used GROUP BY and HAVING for advanced analysis.
8. Answered business questions related to sales, customers, and inventory.

## SQL Analysis
The project answers the following business questions:

- Which books belong to the Fiction genre?
- Which books were published from 1950 onward?
- Which customers belong to Canada?
- Which orders were placed in November 2023?
- What is the total available book stock?
- Which book has the highest price?
- Which orders contain more than one book?
- Which orders have a total amount exceeding $20,000?
- What genres are available in the bookstore?
- Which books have the lowest stock?
- What is the total revenue generated?
- How many books were sold in each genre?
- What is the average price of Fantasy books?
- Which customers placed at least four orders?
- Which book was ordered most frequently?
- What are the top three most expensive Fantasy books?
- How many books were sold by each author?
- Which customers spent the most?
- How much stock remains after fulfilling orders?

## SQL Concepts Practiced
- CREATE TABLE and DROP TABLE
- Primary Keys and Foreign Keys
- CSV Data Import
- SELECT and WHERE
- LIKE and BETWEEN
- ORDER BY and LIMIT
- DISTINCT
- SUM(), AVG(), and COUNT()
- GROUP BY and HAVING
- INNER JOIN and LEFT JOIN
- COALESCE()
- Aggregate Functions and Business Analysis

## Key Learnings
- Learned to design relational database tables.
- Practiced importing CSV files into PostgreSQL.
- Improved SQL querying and data filtering skills.
- Learned to join multiple tables and aggregate data.
- Applied SQL to practical sales and inventory questions.

## How to Run
1. Install PostgreSQL and open pgAdmin 4.
2. Create a new database for the bookstore project.
3. Open the SQL script in the Query Tool.
4. Execute the table creation statements.
5. Update the CSV file paths according to your system.
6. Import the datasets into the corresponding tables.
7. Run the analysis queries and review the results.

**Note:** CSV file paths and permissions must be configured correctly before importing data.

## Repository Structure

```text
Online-Bookstore-SQL-Project/
├── README.md
├── bookstore_analysis.sql
├── Book.csv
├── customers.csv
└── orders.csv
```

## Conclusion
This project demonstrates practical SQL skills in database management, sales analysis, customer behavior analysis, and inventory management using PostgreSQL.

It showcases foundational SQL and business analytics skills relevant to entry-level Data Analyst roles.

## Author
**Riya Verma**

**Project:** Online Bookstore Data Analysis  
**Technology:** PostgreSQL | SQL
