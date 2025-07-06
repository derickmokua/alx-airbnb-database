-- Step 1: Create a new partitioned bookings table
CREATE TABLE bookings_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    -- other columns...
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions for different date ranges
CREATE TABLE bookings_2023 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_2025 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Step 3: (Optional) Create indexes on partitions
CREATE INDEX idx_bookings_2023_start_date ON bookings_2023(start_date);
CREATE INDEX idx_bookings_2024_start_date ON bookings_2024(start_date);
CREATE INDEX idx_bookings_2025_start_date ON bookings_2025(start_date);

-- Step 4: Migrate data from old bookings table to new partitioned table
INSERT INTO bookings_partitioned (id, user_id, property_id, start_date, end_date)
SELECT id, user_id, property_id, start_date, end_date FROM bookings;

-- Step 5: (Optional) Rename tables if needed after migration
-- DROP TABLE bookings;
-- ALTER TABLE bookings_partitioned RENAME TO bookings;
