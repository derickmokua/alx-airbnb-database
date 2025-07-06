# ALX Airbnb Database - Advanced SQL Scripts

This directory contains all SQL scripts and reports for the **ALX Airbnb Database Advanced Module**, where we explore high-level SQL concepts such as complex joins, subqueries, window functions, indexing, query optimization, partitioning, and performance monitoring.

---

## ✅ Task Overview

| Task No. | Task Name                          | File(s) Involved                                  |
|----------|------------------------------------|--------------------------------------------------|
| 0        | Complex Queries with Joins         | `joins_queries.sql`                              |
| 1        | Practice Subqueries                | `subqueries.sql`                                 |
| 2        | Aggregations & Window Functions    | `aggregations_and_window_functions.sql`          |
| 3        | Indexing for Optimization          | `database_index.sql`, `index_performance.md`     |
| 4        | Optimize Complex Queries           | `perfomance.sql`, `optimization_report.md`       |
| 5        | Partitioning Large Tables          | `partitioning.sql`, `partition_performance.md`   |
| 6        | Monitor & Refine Performance       | `performance_monitoring.md`                      |

---

## 🧠 Task Descriptions

### 0. Complex Queries with Joins

**Goal:** Use various SQL JOINs to combine data across multiple tables.

- `joins_queries.sql`:  
  - INNER JOIN: Bookings with corresponding users  
  - LEFT JOIN: Properties with or without reviews  
  - FULL OUTER JOIN (via UNION for MySQL): All users and all bookings

---

### 1. Practice Subqueries

**Goal:** Use correlated and non-correlated subqueries for advanced filtering.

- `subqueries.sql`:  
  - Properties with average rating > 4.0  
  - Users who made more than 3 bookings

---

### 2. Aggregations & Window Functions

**Goal:** Perform analytical queries using `COUNT`, `GROUP BY`, and ranking.

- `aggregations_and_window_functions.sql`:  
  - Total bookings per user  
  - Ranking properties by booking count using `ROW_NUMBER` or `RANK`

---

### 3. Indexing for Optimization

**Goal:** Boost performance by creating indexes on high-usage columns.

- `database_index.sql`:  
  - SQL `CREATE INDEX` statements for columns in WHERE, JOIN, or ORDER BY clauses
- `index_performance.md`:  
  - Comparison of query execution time before and after indexing

---

### 4. Optimize Complex Queries

**Goal:** Refactor long queries for better performance.

- `perfomance.sql`:  
  - Original complex query (joins user, booking, property, payment)
- `optimization_report.md`:  
  - Analysis using `EXPLAIN`, refactoring logic, and performance comparison

---

### 5. Partitioning Large Tables

**Goal:** Improve performance on large datasets using partitioning.

- `partitioning.sql`:  
  - Partitioning `Booking` table by `start_date`
- `partition_performance.md`:  
  - Performance gains observed when querying by date ranges

---

### 6. Monitor & Refine Performance

**Goal:** Use tools like `SHOW PROFILE` and `EXPLAIN ANALYZE` to identify bottlenecks and refine schema.

- `performance_monitoring.md`:  
  - Observations, profiling output, schema/query tweaks, and improvements

---

## 🧾 Requirements

Before working on this project, ensure you:

- Understand SQL basics: `SELECT`, `JOIN`, `GROUP BY`, `WHERE`
- Know DB concepts: primary/foreign keys, normalization
- Can use performance tools like `EXPLAIN`, `ANALYZE`
- Are comfortable working with GitHub for version control

---

## 📦 Directory Structure


---

## 🔥 Key Learning Outcomes

- Writing and optimizing complex SQL queries
- Designing scalable and performant database systems
- Using indexing, partitioning, and window functions effectively
- Thinking like a DBA to ensure data efficiency and integrity

---

> **Repository**: `alx-airbnb-database`  
> **Directory**: `database-adv-script`  
> **Maintainer**: Derick Mokua


