# PostgreSQL Database Setup and Queries

This repository provides SQL scripts for setting up a PostgreSQL database, creating tables, adding extensions, inserting master and transaction data, implementing aggregate queries, viewing data, handling pagination, simulating deadlocks, and preventing race conditions.

## Setup

1. **[Create the Database:](https://github.com/dwinanto34/PostgreSQL/blob/main/database.sql)**
   Run the script to create the PostgreSQL database.

2. **[Add Extensions:](https://github.com/dwinanto34/PostgreSQL/blob/main/extensions.sql)**
   Execute the script to add necessary extensions to the database.

3. **[Create Tables:](https://github.com/dwinanto34/PostgreSQL/blob/main/tables.sql)**
   Run the script to create tables for products, orders, and order items.

4. **[Create Indexes:](https://github.com/dwinanto34/PostgreSQL/blob/main/indexes.sql)**
   Execute the script to create indexes for better query performance.

## Data Management

1. **[Insert Products Master Data:](https://github.com/dwinanto34/PostgreSQL/blob/main/master_data.sql)**
   Populate the products table with master data.

2. **[Insert Orders Transaction Data:](https://github.com/dwinanto34/PostgreSQL/blob/main/transaction_data.sql)**
   Add transactional data to the orders and order items tables.

## Queries and Views

1. **[Aggregate Queries:](https://github.com/dwinanto34/PostgreSQL/blob/main/aggregates.sql)**
   Implement queries to calculate averages, min, max, and order counts.

2. **[View Data Queries:](https://github.com/dwinanto34/PostgreSQL/blob/main/view_data.sql)**
   Retrieve data from the orders, order items, and products tables.

3. **[Pagination:](https://github.com/dwinanto34/PostgreSQL/blob/main/pagination.sql)**
   Explore queries for paginating through data efficiently.

## Other Topics

1. **[Deadlock Simulation:](https://github.com/dwinanto34/PostgreSQL/blob/main/deadlock.sql)**
   Simulate a deadlock scenario between two transactions.

2. **[Prevent Race Condition:](https://github.com/dwinanto34/PostgreSQL/blob/main/race_condition.sql)**
   Address race conditions using `SELECT ... FOR UPDATE` for data consistency.
