SELECT a.student_id, a.student_name, a.subject_name, COUNT(e.subject_name) as attended_exams
FROM (
    SELECT * FROM Students s CROSS JOIN Subjects b
) a
LEFT JOIN Examinations e
ON a.student_id = e.student_id AND a.subject_name = e.subject_name
GROUP BY a.student_id, a.student_name, a.subject_name
ORDER BY a.student_id, a.student_name
