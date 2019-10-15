SELECT DISTINCT teachers.name as teacher, cohorts.name as cohorts, COUNT(assistance_requests.created_at) as total_assistances
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name 
ORDER BY teachers.name;