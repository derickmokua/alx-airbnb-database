# Task 3: Index Performance Report

## Objective

Improve query performance by adding indexes on high-usage columns in the `users`, `bookings`, `properties`, and `reviews` tables.

---

## 🔍 Indexed Columns and Rationale

| Table      | Column        | Reason for Indexing                     |
|------------|---------------|-----------------------------------------|
| bookings   | user_id       | Used in JOINs and WHERE clauses         |
| bookings   | property_id   | Used in JOINs and aggregations          |
| reviews    | property_id   | Used in JOINs                           |
| bookings   | start_date    | Used in date range queries & partitioning|

---

## 📈 Before vs After Indexing (Using EXPLAIN)

### Sample Query:
```sql
SELECT users.name, COUNT(bookings.id)
FROM users
JOIN bookings ON users.id = bookings.user_id
GROUP BY users.id;
