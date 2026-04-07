# SQL Sales Data Analysis

## Overview
This project analyzes sales data using SQL to uncover business insights such as customer spending behavior, product performance, and sales trends.

The project demonstrates practical SQL skills including joins, aggregation, filtering, and window functions.

## Data
The project uses two datasets:

### 1. sales_data.csv
Contains transaction-level data:
- order_id
- customer_id
- product
- category
- price
- quantity
- date

### 2. customers.csv
Contains customer information:
- customer_id
- customer_name
- city
- segment

## Methodology

### 1. Data Integration
- Used INNER JOIN to combine sales and customer data
- Linked datasets using customer_id

### 2. Data Aggregation
- Calculated total revenue using SUM(price × quantity)
- Grouped data by customer, category, and segment

### 3. Business Analysis
- Identified top customers by total spending
- Analyzed revenue by customer segment
- Evaluated product demand using total quantity sold

### 4. Advanced SQL Techniques
- Used HAVING to filter high-value customers
- Applied window function (running total) to analyze sales trends over time

## Tools
- SQL

## Key Findings
- Revenue is concentrated among a small number of customers
- Different customer segments contribute differently to total revenue
- Certain products dominate total sales volume
- Sales show consistent growth over time

## How to Run
1. Import the CSV files into a SQL database (e.g., MySQL, PostgreSQL, SQLite)
2. Run the queries in `queries.sql`

## Author
Yixuan Wang
