# SQL--Learning

# SQL Learning Journey 📚

Welcome to my SQL learning repository! Here, I document my journey as I learn SQL (Structured Query Language) to enhance my skills for a career in Data Analysis and Quality Assurance.

## 🚀 Learning Objectives
- Understand the fundamentals of SQL.
- Write efficient SQL queries for data extraction and analysis.
- Practice with real datasets.

## 📚 Resources
- **Tutorials**:
  - [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)
  - [myskill].(https://myskill.id/)


## 🛠️ Database Setup
- **Database Choice**: MySQL
- **Installation Guides**:
  - [MySQL Installation Guide](https://dev.mysql.com/doc/refman/8.0/en/installing.html)
 

## 📝 Sample Queries
Here are some example SQL queries I am working on:

```sql
-- Select all data from customers table
SELECT * FROM customers;

-- Count the number of customers in each city
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city;

