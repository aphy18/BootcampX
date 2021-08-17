-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.

SELECT cohorts.name,count(students.*) as total_students
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(students.*) > 18
ORDER BY total_students



--  WHERE year_rank <= 3
--  ORDER BY 2, 1 DESC

