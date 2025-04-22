"""
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.
 

Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.
"""

-- answer:
-- 1st approach:
-- Select the id of the current day's weather record
SELECT 
    w1.id
FROM 
    Weather w1
WHERE 
    -- Compare the temperature of the current day (w1) with the temperature of the previous day (w2)
    w1.temperature > (
        SELECT 
            w2.temperature
        FROM 
            Weather w2
        -- Find the record that is exactly one day before the current record
        WHERE 
            w2.recordDate = DATE_SUB(w1.recordDate, INTERVAL 1 DAY)
    );
-- 2nd approach:
SELECT 
    w1.id
FROM
     Weather w1
JOIN 
    Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;

-- 3rd approach:
SELECT w1.id
FROM Weather w1
JOIN Weather w2 
  ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature;