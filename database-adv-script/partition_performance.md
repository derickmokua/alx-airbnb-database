# Partitioning Performance Report

## Objective

Implement partitioning on the `bookings` table based on the `start_date` column to improve query performance on large datasets.

---

## Partitioning Setup

- Created a new `bookings_partitioned` table using **RANGE** partitioning by `start_date`.
- Defined partitions for yearly ranges: 2023, 2024, and 2025.
- Migrated existing data into the new partitioned table.
- Created indexes on the `start_date` column for each partition.

---

## Performance Testing

### Test Query: Fetch bookings for the year 2024

```sql
SELECT * FROM bookings_partitioned
WHERE start_date >= '2024-01-01' AND start_date < '2025-01-01';
