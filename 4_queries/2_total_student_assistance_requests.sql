SELECT COUNT(assistance_requests.created_at) as total_assistance, students.name as name
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;
