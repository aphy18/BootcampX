-- Select the day and the total assignments.
-- Order the results by day.
-- This query only requires the assignments table.

SELECT day,count(assignments.*) as total_assignments
FROM assignments
GROUP BY day
HAVING count(assignments.*) >= 10
ORDER BY day

