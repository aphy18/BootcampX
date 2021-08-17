SELECT teachers.name as teacher, students.name as student, assignments.name as assignment, (created_at-started_at) as duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
-- group by is how you want the order to go horizontal
-- order by is how you want the order to go vertically

ORDER by duration

