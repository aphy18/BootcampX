SELECT name,id,cohort_id,phone
FROM students
 WHERE phone IS NULL
 OR email IS NULL
