-- We need to know which assignments are causing the most assistance requests.

-- List each assignment with the total number of assistance requests with it.

-- Select the assignment's id, day, chapter, name and the total assistances.
-- Order by total assistances in order of most to least.

SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, sum(completed_at - created_at) as total_time_duration
FROM assignments
-- tryna take the spot on assignments.id ? ight bet, replace it with urs
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_time_duration DESC;


-- assignments.id within assignments, turn it into that
-- FROM assistance_requests
-- JOIN assignments ON assignments.id = assignments_id