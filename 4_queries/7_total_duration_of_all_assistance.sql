-- Get the total duration of all assistance requests for each cohort.

-- Select the cohort's name and the total duration the assistance requests.
-- Order by total_duration.
-- Look at the ERD to see how to join the tables.

SELECT cohorts.name as cohort, sum(completed_at - started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohort
ORDER BY total_duration

-- when you use aggregate function, you dont need to group it by that same variable
-- order, telling your column to order by ascending or descending order
-- group by is like a container for displaying and grouping your agregrate function