-- SELECT count(assistance_requests.*),teachers.name
-- FROM assistance_requests
-- -- teachers.id from teachers === teachers_id from assignment_requests
-- JOIN teachers ON teachers.id = teacher_id
-- WHERE name = 'Waylon Boehm'
-- GROUP BY teachers.name;

SELECT count(assistance_requests.*) as total_assistances, teachers.name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name =  'Waylon Boehm'
GROUP BY teachers.name;