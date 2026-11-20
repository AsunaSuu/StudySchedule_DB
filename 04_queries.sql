SELECT g.group_name, s.subject_name, t.last_name, t.first_name
FROM assignments a
JOIN study_groups g ON a.group_id = g.group_id
JOIN subjects s ON a.subject_id = s.subject_id
JOIN teachers t ON a.teacher_id = t.teacher_id
ORDER BY g.group_name, s.subject_name;

SELECT s.subject_name, s.hours, g.group_name, a.academic_year, a.semester
FROM assignments a
JOIN subjects s ON a.subject_id = s.subject_id
JOIN study_groups g ON a.group_id = g.group_id
WHERE a.teacher_id = 1
ORDER BY s.subject_name;

SELECT t.last_name, t.first_name, g.group_name, a.academic_year, a.semester
FROM assignments a
JOIN teachers t ON a.teacher_id = t.teacher_id
JOIN study_groups g ON a.group_id = g.group_id
WHERE a.subject_id = 1
ORDER BY t.last_name;

SELECT s.subject_name, s.hours, t.last_name, t.first_name
FROM assignments a
JOIN subjects s ON a.subject_id = s.subject_id
JOIN teachers t ON a.teacher_id = t.teacher_id
WHERE a.group_id = 1
ORDER BY s.subject_name;

SELECT t.last_name, t.first_name, s.subject_name
FROM assignments a
JOIN teachers t ON a.teacher_id = t.teacher_id
JOIN subjects s ON a.subject_id = s.subject_id
WHERE a.group_id = 1
ORDER BY t.last_name;

SELECT g.group_name, s.subject_name, t.last_name, t.first_name
FROM study_groups g
LEFT JOIN assignments a ON g.group_id = a.group_id
LEFT JOIN subjects s ON a.subject_id = s.subject_id
LEFT JOIN teachers t ON a.teacher_id = t.teacher_id
ORDER BY g.group_name;

SELECT s.subject_name, t.last_name, t.first_name, g.group_name
FROM subjects s
LEFT JOIN assignments a ON s.subject_id = a.subject_id
LEFT JOIN teachers t ON a.teacher_id = t.teacher_id
LEFT JOIN study_groups g ON a.group_id = g.group_id
ORDER BY s.subject_name;

SELECT g.group_name, a.academic_year, a.semester
FROM assignments a
JOIN study_groups g ON a.group_id = g.group_id
WHERE a.teacher_id = 1 AND a.subject_id = 1
ORDER BY a.academic_year, a.semester;

SELECT g.group_name, s.subject_name, t.last_name, t.first_name
FROM assignments a
JOIN study_groups g ON a.group_id = g.group_id
JOIN subjects s ON a.subject_id = s.subject_id
JOIN teachers t ON a.teacher_id = t.teacher_id
WHERE a.academic_year = '2024-2025' AND a.semester = 1
ORDER BY g.group_name;

SELECT t.last_name, t.first_name, t.email
FROM teachers t
LEFT JOIN assignments a ON t.teacher_id = a.teacher_id
WHERE a.assignment_id IS NULL
ORDER BY t.last_name;
