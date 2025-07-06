# Task 6: Performance Monitoring and Refinement Report

## Objective

Continuously monitor query performance using tools like `EXPLAIN ANALYZE` and `SHOW PROFILE`, identify bottlenecks, and apply optimizations such as indexing or schema changes to improve efficiency.

---

## Queries Monitored

1. **User bookings count query**

```sql
SELECT u.id, u.name, COUNT(b.id) AS booking_count
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY u.id, u.name;

