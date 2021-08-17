-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.

SELECT cohorts.name,count(assignment_submissions.*) as assignment_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY assignment_submissions DESC
